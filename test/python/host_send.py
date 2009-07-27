# Copyright Naveen Garg, GPL v2.
# put in same directory as pyclient.ahk and AutoHotkey.dll
import win32api
import win32gui
import win32con
import time

from ctypes import *

ahk = cdll.AutoHotkey

IntArray5 = c_int * 5
ia = IntArray5(5, 1, 7, 33, 99)

CMPFUNC = CFUNCTYPE(c_int, c_int)
def py_cmp_func(a):
     print("recieved", a)
     return a


cmp_func = CMPFUNC(py_cmp_func)
fx = create_string_buffer(str(cast(cmp_func, c_void_p).value))  # int to cstring

pyclient = create_string_buffer("pyclient.ahk")   # no unicode in ahk
ahk.ahkdll(pyclient, "", fx)  
time.sleep(1) #Synchronize
hwnd = win32gui.FindWindowEx(0, 0, 0, "pyclient.ahk")

def send_ahk(msg):
     cmsg = create_string_buffer(msg)   # no unicode in ahk, use cstring
     pcmsg = cast(cmsg, c_void_p).value   # sendmessage requires a pointer
     value = win32api.SendMessage(hwnd, 800, pcmsg, 200)   # 800 is arbitrarily chosen
     return cast(value, c_char_p).value  # get string back out

print send_ahk("hello")

