from distutils.core import setup, Extension

setup (
  name = "pyzeroconf",
  version = "0.12",
  author = "Paul Scott-Murphy",
  url = "http://www.sourceforge.net/projects/pyzeroconf",
  description = "a python implementation of the Zeroconf multicast DNS Service Discovery protocols",
  py_modules = ['Zeroconf', 'Browser', 'ZeroconfTest', 'ZeroconfTest2',]
)
