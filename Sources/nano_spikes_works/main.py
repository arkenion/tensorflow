#!/usr/bin/python3
# -*- coding:utf-8 -*-

import scipy.io as sio
import numpy as np

# v = sio.whosmat( "waveform_of_the_clicks_TRAIN_TEST_sets.mat" )
# print( v[0] )
# print( type(v[0]) )
# print( type(v[0][0]) )
# print( type(v[0][1]) )
# print( type(v[0][2]) )

contents = sio.loadmat("waveform_of_the_clicks_TRAIN_TEST_sets.mat")

data = contents['clicksrando']

print(data.shape)
print(data.ndim)

print("data[0][0] = " + str(data[0][0]))
print("data[0][1] = " + str(data[0][1]))
print("data[1][0] = " + str(data[1][0]))
print("data[1][1] = " + str(data[1][1]))

data_aplatie = data.ravel()

print(data_aplatie.shape)
print(data_aplatie.ndim)

print(data_aplatie[0])
print(data_aplatie[1])
print(data_aplatie[197787648 - 1])
np.save("aplatie.npy", data_aplatie)
