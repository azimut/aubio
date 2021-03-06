#!/bin/bash
set -x
set -e

# cleanup
rm -f aubio.lisp

# Single precision wrapper
swig -v \
     -cffi \
     -module aubio \
     -noswig-lisp \
     -includeall aubio.i
sed -i 's/cl:defconstant/define-constant/g' aubio.lisp
mv aubio.lisp ../aubio-cffi.lisp

# Double precision wrapper
swig -DHAVE_AUBIO_DOUBLE=1 \
     -v \
     -cffi \
     -module aubio \
     -noswig-lisp \
     -includeall aubio.i
sed -i 's/cl:defconstant/define-constant/g' aubio.lisp
mv aubio.lisp ../aubio-cffi-double.lisp
