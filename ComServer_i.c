

/* this ALWAYS GENERATED file contains the IIDs and CLSIDs */

/* link this file in with the server and any clients */


 /* File created by MIDL compiler version 7.00.0555 */
/* at Tue Feb 08 19:35:49 2011
 */
/* Compiler settings for source\ComServer.idl:
    Oicf, W1, Zp8, env=Win32 (32b run), target_arch=X86 7.00.0555 
    protocol : dce , ms_ext, c_ext, robust
    error checks: allocation ref bounds_check enum stub_data 
    VC __declspec() decoration level: 
         __declspec(uuid()), __declspec(selectany), __declspec(novtable)
         DECLSPEC_UUID(), MIDL_INTERFACE()
*/
/* @@MIDL_FILE_HEADING(  ) */

#pragma warning( disable: 4049 )  /* more than 64k source lines */


#ifdef __cplusplus
extern "C"{
#endif 


#include <rpc.h>
#include <rpcndr.h>

#ifdef _MIDL_USE_GUIDDEF_

#ifndef INITGUID
#define INITGUID
#include <guiddef.h>
#undef INITGUID
#else
#include <guiddef.h>
#endif

#define MIDL_DEFINE_GUID(type,name,l,w1,w2,b1,b2,b3,b4,b5,b6,b7,b8) \
        DEFINE_GUID(name,l,w1,w2,b1,b2,b3,b4,b5,b6,b7,b8)

#else // !_MIDL_USE_GUIDDEF_

#ifndef __IID_DEFINED__
#define __IID_DEFINED__

typedef struct _IID
{
    unsigned long x;
    unsigned short s1;
    unsigned short s2;
    unsigned char  c[8];
} IID;

#endif // __IID_DEFINED__

#ifndef CLSID_DEFINED
#define CLSID_DEFINED
typedef IID CLSID;
#endif // CLSID_DEFINED

#define MIDL_DEFINE_GUID(type,name,l,w1,w2,b1,b2,b3,b4,b5,b6,b7,b8) \
        const type name = {l,w1,w2,{b1,b2,b3,b4,b5,b6,b7,b8}}

#endif !_MIDL_USE_GUIDDEF_

MIDL_DEFINE_GUID(IID, LIBID_LibCOMServer,0xA9863C65,0x8CD4,0x4069,0x89,0x3D,0x3B,0x5A,0x3D,0xDF,0xAE,0x88);


MIDL_DEFINE_GUID(IID, IID_ICOMServer,0x04FFE41B,0x8FE9,0x4479,0x99,0x0A,0xB1,0x86,0xEC,0x73,0xF4,0x9C);


MIDL_DEFINE_GUID(CLSID, CLSID_CoCOMServer,0xC00BCC8C,0x5A04,0x4392,0x87,0x0F,0x20,0xAA,0xE1,0xB9,0x26,0xB2);


MIDL_DEFINE_GUID(CLSID, CLSID_CoCOMServerOptional,0x974318D9,0xA5B2,0x4FE5,0x8A,0xC4,0x33,0xA0,0xC9,0xEB,0xB8,0xB5);

#undef MIDL_DEFINE_GUID

#ifdef __cplusplus
}
#endif



