Python:
```
from keras import backend
def rmse(y_true, y_pred):
	return backend.sqrt(backend.mean(backend.square(y_pred - y_true), axis=-1))

# add a custom metric
def build_model():
    model=tf.keras.models.Sequential()
    model.add(tf.keras.layers.Dense(10,input_shape=(4,),activation='sigmoid'))
    model.add(tf.keras.layers.Dense(3,activation='softmax'))
    model.compile(tf.keras.optimizers.Adam(lr=0.04),'categorical_crossentropy',metrics=['accuracy', rmse])
    return model

# compile model, train the model etc

# save it as a TF model
import tensorflow as tf
# https://www.tensorflow.org/api_docs/python/tf/keras/models/load_model
tfm = tf.keras.models.load_model('./keras_iris.h5', custom_objects = {'rmse': rmse })
with tf.keras.backend.get_session() as sess:
    sess.run(tf.global_variables_initializer())
    tf.saved_model.simple_save(
        sess,
        './irisModel/1',
        inputs={'input_image': tfm.input},
        outputs={t.name:t for t in tfm.outputs})
```

cli:
```
# git clone TensorFlow

# cd in the tensorflow dir, this is important as bazel needs a workspace

# run based on this : https://github.com/tensorflow/tensorflow/blob/master/tensorflow/contrib/lite/toco/g3doc/cmdline_examples.md#command-line-tools-

bazel run //tensorflow/contrib/lite/python:tflite_convert -- --saved_model_dir=/full/path/to/irisModel/1
```

Note: the tflite file will be generated here:

./bazel-out/k8-opt/bin/tensorflow/contrib/lite/python/tflite_convert.runfiles/org_tensorflow
