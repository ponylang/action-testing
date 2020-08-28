import os

print(os.path.realpath(__file__))

from inspect import currentframe, getframeinfo

def print_error(message, frame=currentframe()):
  frameinfo = getframeinfo(frame)
  print("::error file=" + os.path.realpath(frameinfo.filename) + ",line=" + str(frameinfo.lineno) + "::" + message) 

print("hi")
print_error("O no! error on line 12")
print_error("And another!")
#print(os.path.realpath(frameinfo.filename), frameinfo.lineno)
#
#print("::error file=" + os.path.realpath(frameinfo.filename) + ",line=" + str(frameinfo.lineno) + "::Error here!")
#
#print("error file=" + os.path.realpath(frameinfo.filename) + ",line=" + str(frameinfo.lineno))
