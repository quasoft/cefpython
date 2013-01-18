# Copyright (c) 2012 CefPython Authors. All rights reserved.
# License: New BSD License.
# Website: http://code.google.com/p/cefpython/

from libcpp cimport bool as cpp_bool
from stddef cimport wchar_t
from libcpp.string cimport string as std_string
from wstring cimport wstring as std_wstring

cdef extern from "include/internal/cef_string.h":
    ctypedef struct cef_string_t:
        pass
    cdef cppclass CefString:
        CefString()
        CefString(cef_string_t*)
        cpp_bool empty()
        cpp_bool FromASCII(char*)
        cpp_bool FromString(wchar_t*, size_t, cpp_bool)
        cpp_bool FromString(std_string& str)
        std_string ToString()
        std_wstring ToWString()
        char* c_str()