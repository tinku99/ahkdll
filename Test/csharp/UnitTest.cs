/*
Modified from dynInvoke by Richard Birkby from article in codeproject at
http://www.codeproject.com/KB/cs/dyninvok.aspx?df=100&forumid=2892&exp=0&select=867954
by Naveen Garg.
copyright: BSD
http://www.opensource.org/licenses/bsd-license.php
*/
using System;
using System.Runtime.InteropServices;

namespace DynamicInvocationTest
{
	class Class1{
		[DllImport("kernel32")]
		public extern static int LoadLibrary(string lpLibFileName);
		[DllImport("kernel32")]
		public extern static bool FreeLibrary(int hLibModule);
		[DllImport("kernel32", CharSet=CharSet.Ansi)]
		public extern static int GetProcAddress(int hModule, string lpProcName);
/*
		[DllImport("msjava", CharSet=CharSet.Unicode)]
		public extern static int call(int funcptr, int hwnd, string message, string title, int flags);
*/
		[DllImport("Invoke", CharSet=CharSet.Ansi)]
		public extern static int InvokeFunc(int funcptr, string script, string message, string title);


		static void Main(string[] args)	{
			int hmod=LoadLibrary("AutoHotkey.dll");
			int funcaddr=GetProcAddress(hmod, "ahkdll");
			
			int result=InvokeFunc(funcaddr, "dllclient.ahk", "", "");
			Console.WriteLine("Result of invocation is " + result);
			
			FreeLibrary(hmod);

			Console.WriteLine("Press any key to continue...");
			Console.ReadLine();
		}
	}
}
