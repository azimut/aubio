#!/bin/bash
set -x
set -e

swig -v -cffi -module aubio -noswig-lisp -includeall aubio.i
mv aubio.lisp ../aubio-cffi.lisp
