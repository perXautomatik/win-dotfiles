
#ifndef __GTRMAPI__
#define __GTRMAPI__

/*****************************************************************************
This file contains defines required to use GUI Terminal API functions
from application and to create user extention DLLs.
TApi... functions are placed in gtrmapi.dll and you can access them in two ways:
1) Link gtrmapi.lib into your application - gtrmapi.dll will be automatically
   loaded into memory together with your application
2) Load gtrmapi.dll using LoadLibrary() function, then obtain pointers to API
   functions using GetProcAddress() function.
******************************************************************************/

#include "gtrmver.h"

#ifdef SYS_LINUX
#define GTRMAPI_API
#else
#ifdef GTRMAPI_EXPORTS
#define GTRMAPI_API __declspec(dllexport)
#else
#define GTRMAPI_API __declspec(dllimport)
#endif
#endif


// typedefs for pointers to RPC functions
// RPC function defined on terminal-side extention DLL's should conform to these types
#ifdef __cplusplus
extern "C" {
#endif
// Synchronous RPC function with limited return value
typedef void (*SYNCRPCFUN)(void *pCallData,int callDataSize,void *pResData,int *pMaxResDataSize );
// Synchronous RPC function with unknown size of the return value
typedef void (*SYNCRPC_VRSFUN)(void *pCallData,int callDataSize,void **ppResData,int *pResDataSize );
// Ssynchronous RPC function with no return at all
typedef void (*ASYNCRPCFUN)(void *pCallData,int callDataSize);
#ifdef __cplusplus
}
#endif



// Maximum number of wide characters (incl terminating 0) in Terminal username
#define TAPI_MAXUSERNAME		64

// Maximum number of wide characters (incl terminating 0) in Terminal domainname
#define TAPI_MAXDOMAINNAME		32

// Maximum number of wide characters (incl terminating 0) in directory name
#define TAPI_MAXDIRNAME		2048

// Window network Id
typedef unsigned short WNDNETID;

// ID/handle of the remotely loaded module
typedef __int64 HREMMODULE;


// Error codes returned by TApi and GteApi functions
#define TAPI_SUCCESS			0
#define TAPI_SYSERR				1
#define TAPI_NOCNETLIB			2
#define TAPI_CANTIMPORTFUN		3
#define TAPI_BADAPIVERSION		4
#define TAPI_BADPARAMS			5
#define TAPI_RESULTTOLARGE		6
#define TAPI_NOFUNCTION			7
#define TAPI_NOFILE				8
#define TAPI_BADMODE			9
#define TAPI_NOGTEEXE			10
#define TAPI_NOTCONN			11
#define TAPI_BADTHREAD			12

// Harbour API specific errors
#define TAPI_CNTLOAD_GTEHRBDLL	200
#define TAPI_CNTLOAD_HARBOURDLL	201
#define TAPI_BADHARBOURDLLVER	202
#define TAPI_NOHRBFUNCTION		203
#define TAPI_CNTALLOCATE		204
#define TAPI_INVALIDRPCRETVAL	205


// Overwrite file if exists flag
#define TAPI_F_FILEOVERWRITE	0x0001

// Directory types for TApiGetClientDir
#define TAPI_DIRTYPE_GTE						1	// directory where gte.exe is located
#define TAPI_DIRTYPE_DESKTOP					2	// CSIDL_DESKTOP
#define TAPI_DIRTYPE_DESKTOPDIRECTORY			3	// CSIDL_DESKTOPDIRECTORY
#define TAPI_DIRTYPE_COMMONDESKTOPDIRECTORY		4	// CSIDL_COMMON_DESKTOPDIRECTORY
#define TAPI_DIRTYPE_APPDATA					5	// CSIDL_APPDATA
#define TAPI_DIRTYPE_COMMONAPPDATA				6	// CSIDL_COMMON_APPDATA
#define TAPI_DIRTYPE_LOCALAPPDATA				7	// CSIDL_LOCAL_APPDATA
#define TAPI_DIRTYPE_PROFILE					8	// CSIDL_PROFILE
#define TAPI_DIRTYPE_MYDOCUMENTS				9	// CSIDL_MYDOCUMENTS

// Authentication methods as returned by  TApiGetAuthenticationMode
#define TAPI_AUTH_TERMINAL		0		// Terminal user authentication
#define TAPI_AUTH_WINDOWS		1		// Windows authentication with logon used

// Client modes as returned by TApiGetClientMode
#define TAPI_CLIENT_DESKTOP		0		// client shows full virtual desktop in one window (such as browser client)
#define TAPI_CLIENT_MULTIWINDOW	1		// client shows all application windows in native client system windows (such as native WIndows client)

// flags for TApiSetPDFPrintParams
#define F_PDF_NOFILEDIALOG	0x0001		// save file without showing save file dialog

// flags for TApiCheckClientProcess
#define F_PCHECK_NAMECASESENSITIVE	0x0001		// exe name is case sensitive

// flags for TApiKillClientProcess
#define F_PKILL_NAMECASESENSITIVE	0x0001		// exe name is case sensitive

// flags for TApiFindClientWindow
#define F_FCW_TITLECASESENSITIVE	0x0001		// title parameters are case sensitive
#define F_FCW_TITLEFRAGMENTS		0x0002		// title parameters are fragments of the window title
#define F_FCW_TITLE_MATCHANY		0x0004		// match any of the title parameters

// Error structure for TApiPutFileToTerminal && TApiGetFileFromTerminal
#pragma pack(4)
typedef struct {
	unsigned short error;		// ERROR code or TAPI_SUCCESS if success
	unsigned nbytes;			// bytes read or written
	DWORD lastSrvSysError;		// error returned by server GetLastError() in case error == FILEERR_SYSERR
	DWORD lastTrmSysError;		// error returned by terminal GetLastError() in case error == FILEERR_SYSERR
} REMFILEERROR;

// Structure used to retrieve OS information

// dwPlatformId represents the operating system as follows
//#define VER_PLATFORM_WIN32_NT           2		// defined in winnt.h
#define VER_PLATFORM_LINUX		101		// Linux operating system
#define VER_PLATFORM_ANDROID	151		// Android operating system
#define VER_PLATFORM_IOS		161		// IOS operating system
#define VER_PLATFORM_MACOS		171		// MacOS operating system

#pragma pack(4)
typedef struct {
	DWORD dwMajorVersion;
	DWORD dwMinorVersion;
	DWORD dwBuildNumber;
	DWORD dwPlatformId;
} TAPI_OSVERSIONINFO;


// set if synchronous call, 0 otherwise
#define F_GTEEVT_SYNC	0x0001

#pragma pack(4)
typedef struct {
	DWORD Flags;				// F_GTEEVT_ flags
	DWORD clntDataSize;			// number of bytes in clntData table (can be 0)
	unsigned char clntData[1];	// clntDataSize bytes of data supplied by client call to GteApiRaise[Async/Sync]AppEvent
} GTEEVENTINFO;


// Winflector event callback function (registered with a call to TApiRegisterAppCallback)
typedef DWORD (CALLBACK* WINFLECTOREVTPROC)(int nEvt, void *ptr);

// Event codes passed to WINFLECTOREVTPROC
#define WFLEVT_NORMALEXIT		1
#define WFLEVT_CRITICALERROR	2
#define WFLEVT_ASYNCGTEEVENT	11
#define WFLEVT_SYNCGTEEVENT		12

// Parameter codes for TApiSetClientParam

// dragging optimization values 0=OFF, 1=ON
#define TAPI_CLTPARAM_DRAGOPTIMIZATION	1
// dragging WM_MOUSEMOVE interval in milliseconds (10-150), default 30
#define TAPI_CLTPARAM_DRAGMOVEINTERVAL	2


// Terminal API function prototypes
#ifdef __cplusplus
extern "C" {
#endif
GTRMAPI_API int TApiInitialize( void );
GTRMAPI_API int TApiInitialized( void );
GTRMAPI_API int TApiTerminalMode( void );
GTRMAPI_API int TApiGetApiVersion( GTRMVERSION *pApiVer );
GTRMAPI_API int TApiGetTrmVersion( GTRMVERSION *pCallerVer, GTRMVERSION *pCnetlibVer );
GTRMAPI_API int TApiCheckConnected( void );
GTRMAPI_API DWORD TApiGetLastError( void );
GTRMAPI_API DWORD TApiGetLastSrvError( void );
GTRMAPI_API DWORD TApiGetLastTrmError( void );
GTRMAPI_API HREMMODULE TApiRemoteLoadLibraryEx( WCHAR *pFileName, DWORD dwFlags );
GTRMAPI_API BOOL TApiRemoteFreeLibrary( HREMMODULE hRemoteModule );
GTRMAPI_API int TApiSyncRPC(HREMMODULE hRemoteModule,WCHAR *pFunName,void *pCallData,int callDataSize,void *pResData,int *pMaxResDataSize);
GTRMAPI_API int TApiSyncRPC_VSR(HREMMODULE hRemoteModule,WCHAR *pFunName,void *pCallData,int callDataSize,void **ppResData,int *pResDataSize );
GTRMAPI_API int TApiAsyncRPC(HREMMODULE hRemoteModule,WCHAR *pFunName,void *pCallData,int callDataSize);
GTRMAPI_API WNDNETID TApiHwndToNetId( HWND hwnd );
GTRMAPI_API WNDNETID TApiHwndToRemotedNetId( HWND hwnd );
GTRMAPI_API HWND TApiNetIdToHwnd( WNDNETID netid );
GTRMAPI_API int TApiPutFileToTerminal( WCHAR *srvFileName, WCHAR *termFileName, REMFILEERROR *pFlError, DWORD flags );
GTRMAPI_API int TApiGetFileFromTerminal( WCHAR *pSrvFileName, WCHAR *pTrmFileName, REMFILEERROR *pFlError, DWORD flags );
GTRMAPI_API int TApiRemotePrintFile( WCHAR *pFileName, WCHAR *pPrinterName, WCHAR *pDatatype );
GTRMAPI_API int TApiSendUpdates( HWND hwnd );
GTRMAPI_API void *TApiMemGlobalAlloc( unsigned size );
GTRMAPI_API void TApiMemGlobalFree( void *ptr );
GTRMAPI_API DWORD TApiSetDiscTmt( DWORD tmt );
GTRMAPI_API int TApiGetSrvOSVer( TAPI_OSVERSIONINFO *pOSVInfo );
GTRMAPI_API int TApiGetTrmOSVer( TAPI_OSVERSIONINFO *pOSVInfo );
GTRMAPI_API int TApiGetUserName( WCHAR *pUserName );
GTRMAPI_API int TApiGetDomainName( WCHAR *pDomainName );
GTRMAPI_API int TApiGetGroups( DWORD *pNGroups, WCHAR ***pWArr );
GTRMAPI_API int TApiGetAuthenticationMode( void );
GTRMAPI_API int TApiGetDistribCode( void );
GTRMAPI_API int TApiGetExpirationDate( void );
GTRMAPI_API unsigned TApiGetRemoteIPPort( void  );
GTRMAPI_API unsigned TApiGetRemoteIPAddr( void  );
GTRMAPI_API int TApiRaiseFinalError( wchar_t *pDescription, wchar_t *pFunction, int ival1, int ival2 );
GTRMAPI_API wchar_t * TApiGetClientDir( int dirType );
GTRMAPI_API int TApiGetMaxDevices( void );
GTRMAPI_API int TApiGetClientId( void );
GTRMAPI_API int TApiRegisterAppCallback( WINFLECTOREVTPROC pEvtCallbackProc, void *pCallbackData, WINFLECTOREVTPROC *pPrevProc, void **pPrevData );
GTRMAPI_API int TApiRegisterAppWithRuntime( DWORD RegCode, DWORD RegFlags );
GTRMAPI_API int TApiGetClientMode( void );
GTRMAPI_API int TApiGetRemoteIPAddrStr( WCHAR *pIPStrBuf );
GTRMAPI_API int TApiGetRemoteIPAddrPortStr( WCHAR *pPortStrBuf );
GTRMAPI_API int TApiSetPDFPrintParams( WCHAR *pClientDirectoryName, WCHAR *pClientPdfFileName, DWORD flags );
GTRMAPI_API DWORD TApiStartClientProcess( WCHAR *pCommandLine, WCHAR *pWorkDirectoryName, DWORD startFlags );
GTRMAPI_API DWORD TApiCheckClientProcess( DWORD ProcessId, WCHAR *pExeName, DWORD checkFlags );
GTRMAPI_API DWORD TApiKillClientProcess( DWORD ProcessId, WCHAR *pExeName, DWORD killFlags );
GTRMAPI_API int TApiSetClientWindowTopMost( HWND hwnd, int bTopMost );
GTRMAPI_API int TApiFindClientWindow( WCHAR *pTitle1, WCHAR *pTitle2, WCHAR *pTitle3, DWORD findFlags );
GTRMAPI_API wchar_t * TApiGetComputerNameEx( int nameType );
GTRMAPI_API wchar_t * TApiGetUserNameEx( int nameType );
GTRMAPI_API int TApiRemoteShellExecute( HWND hwnd, WCHAR *pOperation, WCHAR *pFile, WCHAR *pParams, WCHAR *pDirectory, int nShowCmd );
GTRMAPI_API int TApiSetClientParam( DWORD ParamCode, DWORD ParamValue );

#ifdef __cplusplus
}
#endif

#pragma pack()

#endif
