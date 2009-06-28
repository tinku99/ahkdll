# Copyright Naveen Garg, GPL v2.
# put in same directory as pyclient.ahk and AutoHotkey.dll
import win32api
import win32gui
import win32con
import time

from ctypes import *

ahk = cdll.AutoHotkey
pyclient = create_string_buffer("pyclient.ahk")   # no unicode in ahk


IntArray5 = c_int * 5
ia = IntArray5(5, 1, 7, 33, 99)

CMPFUNC = CFUNCTYPE(c_int, c_int)
def py_cmp_func(a):
     print("py_cmp_func", a)
     return a


cmp_func = CMPFUNC(py_cmp_func)

fx = create_string_buffer(str(cast(cmp_func, c_void_p).value))
ahk.ahkdll(pyclient, "", fx)  

time.sleep(1) #Synchronize

hwnd = win32gui.FindWindowEx(0, 0, 0, "pyclient.ahk")
win32api.SendMessage(hwnd, 800, cast(pyclient, c_void_p).value, 200) 




