%module aubio
%{
/* Includes the header in the wrapper code */
#include "aubio.h"
%}

%insert("lisphead") %{
(cffi:load-foreign-library "libaubio.so") 
(in-package :aubio)
(defmacro define-constant (name value &optional doc)
  `(defconstant ,name (if (boundp ',name) (symbol-value ',name) ,value)
                      ,@(when doc (list doc))))
%}

%feature("export");
/* %feature("intern_function", "1"); */

/* Parse the header file to generate wrappers */
%include "/usr/include/aubio/aubio.h"
