import os

print(os.path.realpath(__file__))

from inspect import currentframe, getframeinfo

frameinfo = getframeinfo(currentframe())

print(os.path.realpath(frameinfo.filename), frameinfo.lineno)

