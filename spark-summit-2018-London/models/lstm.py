import pandas as pd
import numpy as np
from keras.layers.core import Dense, Activation, Dropout
from keras.layers.recurrent import LSTM
from keras.models import Sequential
import time
from sklearn.metrics import mean_squared_error
from matplotlib import pyplot as plt
from sklearn.preprocessing import MinMaxScaler
from sklearn.preprocessing import StandardScaler
from math import sqrt

# load dataset
dataset = pd.read_csv('health_data.csv', usecols=[1], engine='python',  header=None)
#plt.plot(dataset)

# plt.show()

# window size
data_window=7

# scala data
scaler = MinMaxScaler(feature_range=(-1, 1))
scaled = scaler.fit_transform(dataset.values)
series = pd.DataFrame(scaled)

data_series = series.copy()
for i in range(data_window):
    series = pd.concat([series, data_series.shift(-(i+1))], axis=1)

series.dropna(axis=0, inplace=True)

nrow = int(round(0.8*series.shape[0]))
train = series.iloc[:nrow, :]
test = series.iloc[nrow:,:]

from sklearn.utils import shuffle
#train = shuffle(train)

train_X = train.iloc[:,:-1]
train_y = train.iloc[:,-1]
test_X = test.iloc[:,:-1]
test_y = test.iloc[:,-1]
train_X = train_X.values
train_y = train_y.values
test_X = test_X.values
test_y = test_y.values
import tensorflow as tf
sess = tf.Session()

from keras import backend as K
K.set_session(sess)

train_X = train_X.reshape(train_X.shape[0],train_X.shape[1],1)
test_X = test_X.reshape(test_X.shape[0],test_X.shape[1],1)

model = Sequential()

model.add(LSTM(input_shape = (data_window,1), output_dim= data_window, return_sequences = True))
model.add(LSTM(100))
model.add(Dropout(0.5))
model.add(Dense(1))
model.add(Activation("linear"))
model.compile(loss="mae", optimizer="adam")
model.summary()
start = time.time()
model.fit(train_X,train_y,batch_size=81, epochs=100, validation_split=0.1)
print("> Compilation Time : ", time.time() - start)

preds = model.predict(test_X)
preds = scaler.inverse_transform(preds)
actuals = scaler.inverse_transform(test_y.reshape(-1,1))
preds
actuals
rmse = sqrt(mean_squared_error(actuals,preds))
rmse
plt.plot(actuals)
plt.plot(preds)
plt.show()
