%module aubio
%{
/* Includes the header in the wrapper code */
#include "aubio.h"
%}

%insert("lisphead") %{
(cffi:load-foreign-library "libaubio.so") 
(in-package :aubio)
%}

%feature("export");
/* %feature("intern_function", "1"); */

/* Parse the header file to generate wrappers */
%include "/usr/include/aubio/aubio.h"
