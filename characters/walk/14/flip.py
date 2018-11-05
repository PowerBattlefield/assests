import numpy as np
from skimage import io
from PIL import Image
import sys
def hflip(X):
    X = X[:,::-1,:]
    return X

str='left'
s='/*.png'
images = io.ImageCollection(str+s)
print(len(images))
for i in range(len(images)):
	out = hflip(images[i])
	io.imsave('right/c'+sys.argv[1]+'_walk_right_'+ "%d"%(i+1) + '.png',out)
