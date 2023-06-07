#ifndef __GTEAPI__
#define __GTEAPI__

/*****************************************************************************
This file contains defines required to use Gte API functions from gte.exe
extention DLL's.
GteApi... functions are placed in gteapi.dll and you can access them in two ways:
1) Link gteapi.lib into your gte-extention DLL - gteapi.dll will be automatically
   loaded into memory when you load your extention DLL using
   TApiRemoteLoadLibraryEx() API function
2) Load gteapi.dll in gte-extention DLL using LoadLibrary() function from your
   own RPC function, then obtain pointers to GteApi... functions using
   GetProcAddress() function.
******************************************************************************/

#include "gtrmapi.h"

#ifdef GTEAPI_EXPORTS
#define GTEAPI_API __declspec(dllexport)
#else
#define GTEAPI_API __declspec(dllimport)
#endif


// Information about terminal server version and server system
typedef struct {
	// operating system
	unsigned short ServerSystem;
	unsigned short ServerSystemVerMajor;
	unsigned short ServerSystemVerMinor;
	// terminal server
	unsigned short TSVerMajor;
	unsigned short TSVerMinor;
	unsigned short TSVerSubver;
	unsigned short TSVerBugFix;
	// server time
	unsigned short ServerYear;
	unsigned short ServerMonth;
	unsigned short ServerDay;
} GTEAPI_TRMSVINFO;

// GTE.EXE api function prototypes
extern "C" {
GTEAPI_API int GteApiInitialize( void );
GTEAPI_API int GteApiInitialized( void );
GTEAPI_API int GteApiGetApiVersion( GTRMVERSION *pApiVer );
GTEAPI_API int GteApiGetGteVersion( GTRMVERSION *pCallerVer, GTRMVERSION *pGteVer );
GTEAPI_API int GteApiCheckConnected( void );
GTEAPI_API WNDNETID GteApiHwndToNetId( HWND hwnd );
GTEAPI_API HWND GteApiNetIdToHwnd( WNDNETID netid );
GTEAPI_API void * GteApiMemGlobalAlloc( unsigned size );
GTEAPI_API void GteApiMemGlobalFree( void *ptr );
GTEAPI_API int GteApiGetSrvInfo( GTEAPI_TRMSVINFO *pSrvInfo );
GTEAPI_API unsigned GteApiSetConsoleEventMask( unsigned newMask );
GTEAPI_API int GteApiRaiseFinalError( wchar_t *pDescription, wchar_t *pFunction, int ival1, int ival2 );
GTEAPI_API int GteApiRaiseAsyncAppEvent( void *pClntData, DWORD dataSize );
GTEAPI_API int GteApiRaiseSyncAppEvent( void *pClntData, DWORD dataSize, DWORD *pResult );
}
#endif