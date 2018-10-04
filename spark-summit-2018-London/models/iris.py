import pandas as pd
import numpy as np
import time
import tensorflow as tf
from sklearn.preprocessing import LabelEncoder
from sklearn.model_selection import train_test_split
from sklearn.metrics import classification_report,confusion_matrix
import tensorflowjs as tfjs
import keras

# Using the same sequential model as here: https://github.com/tensorflow/tfjs-examples/blob/master/iris/python/iris.py
def build_model():
    model=tf.keras.models.Sequential()
    model.add(tf.keras.layers.Dense(10,input_shape=(4,),activation='sigmoid'))
    model.add(tf.keras.layers.Dense(3,activation='softmax'))
    model.compile(tf.keras.optimizers.Adam(lr=0.04),'categorical_crossentropy',metrics=['accuracy'])
    return model

dataset = pd.read_csv('iris.csv')
# Split data into train and test sets
X = dataset.iloc[:,0:4].values
y = dataset.iloc[:,4].values

# Map class lebels to arithmetic values to fit to the model.
encoder =  LabelEncoder()
y1 = encoder.fit_transform(y)
Y = pd.get_dummies(y1).values

X_train,X_test, y_train,y_test = train_test_split(X,Y,test_size=0.2,random_state=0)

start = time.time()
model = build_model()
model.fit(X_train,y_train,epochs=100)
print("Model Training Time : ", time.time() - start)

model.summary()
y_pred = model.predict(X_test)
y_test_class = np.argmax(y_test,axis=1)
y_pred_class = np.argmax(y_pred,axis=1)

# Report classification results on the iris dataset.
print(classification_report(y_test_class,y_pred_class))
print(confusion_matrix(y_test_class,y_pred_class))

# Save tf.keras model in HDF5 format.
keras_file = "keras_iris.h5"
tf.keras.models.save_model(model, keras_file)

# Convert to TensorFlow Lite model.
converter = tf.contrib.lite.TocoConverter.from_keras_model_file(keras_file)
tflite_model = converter.convert()
open("iris.tflite", "wb").write(tflite_model)

# def build_keras_model():
#     model=keras.models.Sequential()
#     model.add(keras.layers.Dense(10,input_shape=(4,),activation='sigmoid'))
#     model.add(keras.layers.Dense(3,activation='softmax'))
#     from keras import optimizers
#     adam=optimizers.Adam(lr=0.04)
#     model.compile(loss="categorical_crossentropy", optimizer=adam,metrics=['accuracy'])
#     return model

# Build using the keras api
# km = build_keras_model()
# km.fit(X_train,y_train,epochs=100)
# km.summary()

# Save as a TFjs model
# Does not work as expected when model is loaded
# tfjs.converters.save_keras_model(km, "./")

import tensorflow as tf
tfm = tf.keras.models.load_model('./keras_iris.h5')
with tf.keras.backend.get_session() as sess:
    sess.run(tf.global_variables_initializer())
    tf.saved_model.simple_save(
        sess,
        './irisModel/1',
        inputs={'input_image': tfm.input},
        outputs={t.name:t for t in tfm.outputs})

# Use this command to serve your TF model during development
# saved_model_cli run --dir ./ --tag_set serve --signature_def serving_default --input_exp 'input_image=np.array([ [5.5, 4.2, 1.4, 0.2]])'

# Transform model to tf.js
# This works fine when model is loaded in browser
#tensorflowjs_converter --input_format keras ./keras_iris.h5 ./
from subprocess import call
call(["tensorflowjs_converter", "--input_format", "keras", "./keras_iris.h5", "./"])

# To serve the tf.js model for local dev, run the next command in the tf-js folder
# make sure you set the appropriate ip in index.js to avoid issues when requesting
# resources with different origin than server's ip.
# Make sure you have Extension Allow-Control-Allow-Origin: * for Chrome to make things easier.

# python -m SimpleHTTPServer
# Then just try http://ip:8000

# Python 2.7.15rc1 (default, Apr 15 2018, 21:51:34)
# [GCC 7.3.0] on linux2
# Type "help", "copyright", "credits" or "license" for more information.
# >>> import numpy as np
# >>> import tensorflow as tf
#
# >>>
# >>> # Load TFLite model and allocate tensors.
# ... interpreter = tf.contrib.lite.Interpreter(model_path="converted_model.tflite")
# >>> interpreter.allocate_tensors()
# >>>
# >>> # Get input and output tensors.
# ... input_details = interpreter.get_input_details()
# >>> output_details = interpreter.get_output_details()
# >>>
# >>> # Test model on random input data.
# ... input_shape = input_details[0]['shape']
# >>> input_data = np.array([[5.5, 4.2, 1.4, 0.2]], dtype=np.float32)
# >>> interpreter.set_tensor(input_details[0]['index'], input_data)
# >>> interpreter.invoke()
# >>> output_data = interpreter.get_tensor(output_details[0]['index'])
# >>> print(output_data)
# [[0.23580931 0.5257615  0.23842919]]
