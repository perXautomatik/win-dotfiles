/*****************************************************************************
This application illustrates how to use the GUI Terminal API (TApi...)
functions from user application. These functions allow application
running in in terminal mode accessing various Terminal features
including the Remote Procedure Calls (RPCs) of the functions on the
terminal. The RPC functions we call here are placed in gteext.dll.

This application:
1. Initailizes the Terminal API calling TApiInitialize()
2. Loads the remote extention DLL (gteext.dll) by using the
   TApiRemoteLoadLibraryEx() function.
3. Creates main application window and makes it visible
4. On every window repaint (WM_PAINT message) various TApi... functions
   are called and their result is presented on the screen
5. On application exit the extention DLL is unloaded using
   TApiRemoteFreeLibrary() function

To run this sample:
1. Ensure gtrmapi.dll is located in the same directory as testcapi.exe
2. Ensure gteapi.dll and gteext.dll are located in the same directory as gte.exe
3. Run testcapi.exe in terminal mode
******************************************************************************/

#include <windows.h>
#include <stdio.h>


#include "gtrmver.h"
#include "gtrmapi.h"
#include "gteext.h"

static TCHAR szAppName[] = TEXT ("TestCAPI") ;
static HREMMODULE hGteExtDll=NULL;
static int cxChar, cyChar ;
static RECT  wrect ;


LRESULT CALLBACK WndProc (HWND, UINT, WPARAM, LPARAM) ;
DWORD CALLBACK WinflectorEventCallback(int nEvt, void *ptr);


int InitializeTAPI( void )
{
	int aires;
	TAPI_OSVERSIONINFO	tos;
	// Initialize base API functions
	aires = TApiInitialize();
	if( aires != TAPI_SUCCESS )
	{
		switch( aires )
		{
		case TAPI_NOCNETLIB:
			MessageBoxW(NULL,L"Application running in non-terminal mode",L"Error",MB_OK);
			break;
		default:
			MessageBoxW(NULL,L"Cannot initialize API",L"Error",MB_OK);
			break;
		}
		return 1;	// error
	}
	// get terminal OS info to decide if RPC is available
	if( TApiGetTrmOSVer(&tos) != TAPI_SUCCESS )
		return 1; // error

	// extention DLLs and RPC is available only for Windows clients
	if( tos.dwPlatformId == VER_PLATFORM_WIN32_NT )
	{
		// Load extention DLL with user functions to call using our RPC
		hGteExtDll = TApiRemoteLoadLibraryEx(L"gteext.dll",NULL);
		if( !hGteExtDll )
		{
//			lErr= TApiGetLastError();
			MessageBoxW(NULL,L"Cannot load user extentions DLL (gteext.dll)",L"Error",MB_OK);
			return 1;
		}
	}

	// Register application callback to be called by Winflector on several occasions
	TApiRegisterAppCallback(WinflectorEventCallback,L"Callback text",NULL,NULL);

	return 0; // success - api initialized
}



void ShutdownTAPI( void )
{
	// The only thing we need to do is unloading loaded extention DLLs
	if( hGteExtDll )
	{
		TApiRemoteFreeLibrary(hGteExtDll);
	}
}


int WINAPI WinMain (HINSTANCE hInstance, HINSTANCE hPrevInstance,
                    PSTR szCmdLine, int iCmdShow)
{
     MSG          msg ;
     WNDCLASS     wndclass ;
	 HWND hwnd;

	 if( InitializeTAPI() )
		 return 1;

	 wndclass.style         = CS_HREDRAW | CS_VREDRAW ;
     wndclass.lpfnWndProc   = WndProc ;
     wndclass.cbClsExtra    = 0 ;
     wndclass.cbWndExtra    = 0 ;
     wndclass.hInstance     = hInstance ;
     wndclass.hIcon         = LoadIcon (NULL, IDI_APPLICATION) ;
     wndclass.hCursor       = LoadCursor (NULL, IDC_ARROW) ;
     wndclass.hbrBackground = (HBRUSH) GetStockObject (WHITE_BRUSH) ;
     wndclass.lpszMenuName  = NULL ;
     wndclass.lpszClassName = szAppName ;
     
     if (!RegisterClass (&wndclass))
     {
          MessageBox (NULL, TEXT ("This program requires Windows NT!"),
                      szAppName, MB_ICONERROR) ;
          return 0 ;
     }
     
     hwnd = CreateWindow (szAppName, TEXT ("TestCAPI"),
                          WS_OVERLAPPEDWINDOW,
                          /*10*/CW_USEDEFAULT, 10,
                          750, 750,
                          NULL, NULL, hInstance, NULL) ;
     
	ShowWindow (hwnd, iCmdShow) ;
	UpdateWindow(hwnd);
 
	while (GetMessage (&msg, NULL, 0, 0))
	{
		TranslateMessage (&msg) ;
		DispatchMessage (&msg) ;
	}
	
	ShutdownTAPI();		// cleanup the API 
	return (int)msg.wParam ;
}

void wndprintf( HDC hdc, int chx, int chy, const WCHAR *szFormat, ... )
{
	WCHAR wcbuf[1024];
	va_list pArgs;
	va_start(pArgs,szFormat);
	vswprintf(wcbuf,szFormat,pArgs);
	va_end(pArgs);
	TextOut(hdc,chx*cxChar,chy*cyChar,wcbuf,(int)wcslen(wcbuf));
}


wchar_t *PratformIdToName( DWORD PlatformId )
{
	switch( PlatformId )
	{
	case VER_PLATFORM_WIN32_NT:
		return L"VER_PLATFORM_WIN32_NT";
	case VER_PLATFORM_ANDROID:
		return L"VER_PLATFORM_ANDROID";
	case VER_PLATFORM_IOS:
		return L"VER_PLATFORM_IOS";
	case VER_PLATFORM_MACOS:
		return L"VER_PLATFORM_MACOS";
	default:
		return L"UNKNOWN PLATFORM";
	}
}

LRESULT CALLBACK WndProc (HWND hwnd, UINT message, WPARAM wParam, LPARAM lParam)
{
	HDC hdc ;
	PAINTSTRUCT  ps ;
	DWORD lastError=0;
	int line = 1;
	WCHAR userName[TAPI_MAXUSERNAME];
	WCHAR domainName[TAPI_MAXDOMAINNAME];
	int authenticationMode = 0;
	TAPI_OSVERSIONINFO trmosver;
     
	switch (message)
	{
	
	case WM_CREATE :
		cxChar = LOWORD (GetDialogBaseUnits ()) ;
		cyChar = HIWORD (GetDialogBaseUnits ()) ;
		return 0 ;
      
     case WM_PAINT :
			
		hdc = BeginPaint (hwnd, &ps) ;
		SelectObject (hdc, GetStockObject (SYSTEM_FIXED_FONT)) ;
		SetBkMode (hdc, TRANSPARENT) ;
		
		wndprintf(hdc,1,line++,L"Terminal GUI API initialized");
		// Status information functions
		GTRMVERSION tv;
		TApiGetTrmVersion(NULL,&tv);
		line++;  // extra empty line
		wndprintf(hdc,1,line++,L"Initialization status is     : %d",TApiInitialized());
		wndprintf(hdc,1,line++,L"Connection status is         : %d",TApiCheckConnected());
		wndprintf(hdc,1,line++,L"Terminal version is          : %d.%d.%d.%d %c",tv.trmMajor,tv.trmMinor,tv.trmRelease,tv.trmBugfix,tv.trmServerPatch);
		wndprintf(hdc,1,line++,L"Gte extention DLL handle is  : %I64x",hGteExtDll);
		TApiGetUserName(userName);
		wndprintf(hdc,1,line++,L"Terminal server user name is : %s",userName);
		TApiGetDomainName(domainName);
		wndprintf(hdc,1,line++,L"Terminal server domain is    : %s",domainName);
		authenticationMode = TApiGetAuthenticationMode();
		wndprintf(hdc,1,line++,L"Authentication used is       : %d (%s)",authenticationMode, (authenticationMode ? L"AUTH_WINDOWS" : L"AUTH_TERMINAL"));
		if( authenticationMode == TAPI_AUTH_WINDOWS )
		{	// list user groups
			WCHAR **gtab = NULL;
			DWORD nGroups = 0;
			if( TApiGetGroups(&nGroups,&gtab) == TAPI_SUCCESS )
			{
				DWORD i;
				wndprintf(hdc,1,line++,L"Number of groups for user is : %d",nGroups);
				if( gtab )
				{
					for(i=0;i<nGroups;i++)
						wndprintf(hdc,1,line++,L"    %d:[%s]\n",i,gtab[i]);
					TApiMemGlobalFree(gtab);		// don't forget to free memory
				}
			}
			else
			{
				wndprintf(hdc,1,line++,L"TApiGetGroups() returned error");
			}
		}
		int expDate;
		expDate = TApiGetExpirationDate();
		if( expDate )
			wndprintf(hdc,1,line++,L"Terminal expiration date is  : %2d.%2d.%4d",(int)( expDate&255 ),(int)(( expDate&65535 )>>8 ),(int)( expDate>>16 ));
		else
			wndprintf(hdc,1,line++,L"Terminal expiration date is  : Unrestricted");
		if( TApiGetSrvOSVer(&trmosver) == TAPI_SUCCESS )
			wndprintf(hdc,1,line++,L"Server system platform ID    : %3d (%s), version: %d.%d.%d\n",trmosver.dwPlatformId,PratformIdToName(trmosver.dwPlatformId),trmosver.dwMajorVersion,trmosver.dwMinorVersion,trmosver.dwBuildNumber);
		if( TApiGetTrmOSVer(&trmosver) == TAPI_SUCCESS )
			wndprintf(hdc,1,line++,L"Terminal system platform ID  : %3d (%s), version: %d.%d.%d\n",trmosver.dwPlatformId,PratformIdToName(trmosver.dwPlatformId),trmosver.dwMajorVersion,trmosver.dwMinorVersion,trmosver.dwBuildNumber);
		wchar_t *pCompName;
		pCompName = TApiGetComputerNameEx(0);
		wndprintf(hdc,1,line++,L"Terminal system name is      : %s",pCompName?pCompName:L"NULL");
		if( pCompName )
			TApiMemGlobalFree(pCompName);		// don't forget to free memory
		wchar_t *pUserName;
		pUserName = TApiGetUserNameEx(2);
		wndprintf(hdc,1,line++,L"Terminal client user name is : %s",pUserName?pUserName:L"NULL");
		if( pUserName )
			TApiMemGlobalFree(pUserName);		// don't forget to free memory
		wndprintf(hdc,1,line++,L"Remote IP port is            : %d",TApiGetRemoteIPPort());
		unsigned ipAddr;
		ipAddr = TApiGetRemoteIPAddr();
		wndprintf(hdc,1,line++,L"Remote IP address is         : %d.%d.%d.%d",(ipAddr&0xFF000000)>>24,(ipAddr&0xFF0000)>>16,(ipAddr&0xFF00)>>8,(ipAddr&0xFF));
		wchar_t *pGteDir;
		pGteDir = TApiGetClientDir(TAPI_DIRTYPE_GTE);
		wndprintf(hdc,1,line++,L"GTE.EXE directory is         : %s",pGteDir?pGteDir:L"NULL");
		if( pGteDir )
			TApiMemGlobalFree(pGteDir);		// don't forget to free memory
		wchar_t *pDesktopDir;
		pDesktopDir = TApiGetClientDir(TAPI_DIRTYPE_DESKTOP);
		wndprintf(hdc,1,line++,L"Desktop directory is         : %s",pDesktopDir?pDesktopDir:L"NULL");
		if( pDesktopDir )
			TApiMemGlobalFree(pDesktopDir);		// don't forget to free memory
		wndprintf(hdc,1,line++,L"Maximum server devices       : %d",TApiGetMaxDevices());

		// hGteExtDll is != NULL only for Windows clients
		if( hGteExtDll )
		{
			// Calling user-defined functions defined in gteext.dll
			line++;
			wndprintf(hdc,1,line++,L"Now testing RPC calls");

			wndprintf(hdc,1,line,L"Asynchronous RPC call to Beep function ...");
			TApiSendUpdates(hwnd);	// ensure all updates sent before long RPC call
			int rpcres;
			RPCBEEP_PARS bp;	// structure containing Beep() parameters
			bp.dwFreq = 100;	// 100 Hz
			bp.dwDuration = 1000;	// 1000 ms
			rpcres = TApiAsyncRPC(hGteExtDll,L"UserAsyncRPCBeepCallback",&bp,sizeof(RPCBEEP_PARS));
			if( rpcres == TAPI_SUCCESS )
				wndprintf(hdc,45,line++,L"OK");
			else
				wndprintf(hdc,45,line++,L"Failed");
			Sleep(2000);	// wait until asynchronous call completes before proceeding

			wndprintf(hdc,1,line,L"Synchronous RPC call to MsgBox function ...");
			TApiSendUpdates(hwnd);	// ensure all updates sent before long RPC call
			RPCMSGBOX_PARS mbp;	// structure containing MessageBox() parameters
			RPCMSGBOX_ANSW mba;	// structure containing MessageBox() result
			int resSize;
			resSize = sizeof(RPCMSGBOX_ANSW);
			mbp.mbType = MB_YESNO;					// yes/no message box
			mbp.wndnet = TApiHwndToNetId(hwnd);		// pass network ID of our main window
			wcscpy(mbp.msg,L"This message box is created on the terminal. Do you believe?");
			rpcres = TApiSyncRPC(hGteExtDll,L"UserSyncRPCMsgBoxCallback",&mbp,sizeof(RPCMSGBOX_PARS),&mba,&resSize);
			if( rpcres == TAPI_SUCCESS )
			{
				wndprintf(hdc,45,line++,L"OK");
				wndprintf(hdc,1,line++,L"The answer was %s",(mba.mbResult==IDYES)?L"Yes":L"No");
			}
			else
			{
				wndprintf(hdc,45,line++,L"Failed");
				line++;
			}
       
			wndprintf(hdc,1,line,L"Synchronous RPC call to RandomReplicate variable-sized result function ...");
			RPCRANDOMREPLICATE_ANSW *pRRa;	// pointer to structure organizing RandomReplicate result
			WCHAR *pString;					// string to replicate
			pString = L"My string ";
			pRRa=NULL;
			resSize = 0;	
			rpcres = TApiSyncRPC_VSR(hGteExtDll,L"UserSyncRPCRandomReplicateCallback",pString,((int)wcslen(pString)+1)*sizeof(WCHAR),(void**)&pRRa,&resSize);
			if( rpcres == TAPI_SUCCESS && resSize != 0 )
			{
				wndprintf(hdc,77,line++,L"OK");
				wndprintf(hdc,1,line++,L"String replicated %d times is: [%s]",pRRa->rplFact,pRRa->rplStr);
				TApiMemGlobalFree(pRRa);	// we need to free result with TApiMemGlobalFree() function
			}
			else
			{
				wndprintf(hdc,77,line++,L"Failed");
				line++;
			}
		}
/*
		{	// uncoment this block to see www.winflector.com opened with your default browser on the client machine
			int res = TApiRemoteShellExecute(NULL,L"open",L"http://www.winflector.com",NULL,NULL,SW_SHOWNORMAL);
			wndprintf(hdc,1,line++,L"RemoteShellExecute res = %d, le = %d",res,TApiGetLastTrmError());
			res = TApiRemoteShellExecute(NULL,L"explore",L"/tmp",NULL,NULL,SW_SHOWNORMAL);
			wndprintf(hdc,1,line++,L"RemoteShellExecute res = %d, le = %d",res,TApiGetLastTrmError());
			res = TApiRemoteShellExecute(NULL,L"open",L"notepad",L"test.txt",NULL,SW_SHOWNORMAL);
			wndprintf(hdc,1,line++,L"RemoteShellExecute res = %d, le = %d",res,TApiGetLastTrmError());
			res = res;
		}
*/
		line++;
		wndprintf(hdc,1,line++,L"Close the window to finish this application . . .");
        EndPaint (hwnd, &ps) ;
        return 0 ;

	case WM_DESTROY :
		PostQuitMessage (0) ;
		return 0 ;
	}
	return DefWindowProc (hwnd, message, wParam, lParam) ;
}
 

// Winflector event callback function sample
// If needed, must be registered with a call to TApiRegisterAppCallback()
// After execution of testcapi, the information about received events is available in wflevents.txt file
// located in current directory of testcapi.exe application
DWORD CALLBACK WinflectorEventCallback(int nEvt, void *ptr)
{
	DWORD res = 0;
	GTEEVENTINFO *pGteInfo = NULL;
	FILE *fp;

	switch( nEvt )
	{
	case WFLEVT_NORMALEXIT:
		// usually cannot use fwprintf here bcs CRT is already shutdown
		//fwprintf(fp,L"%-6d WFLEVT_NORMALEXIT [%s]\n",GetCurrentProcessId(),ptr);
		res = 100; // instruct application to wait 100 milliceconds before exit
		break;
	case WFLEVT_CRITICALERROR:
		// usually cannot use fwprintf here bcs CRT is already shutdown
		// fwprintf(fp,L"%-6d WFLEVT_CRITICALERROR [%s]\n",GetCurrentProcessId(),ptr);
		res = 100; // instruct application to wait 100 milliceconds before exit
		break;
	case WFLEVT_ASYNCGTEEVENT:
		fp = fopen("wflevents.txt","a+");
		pGteInfo = (GTEEVENTINFO *)ptr;
		if( fp )
		{
			fwprintf(fp,L"%-6d WFLEVT_ASYNCGTEEVENT [%s]\n",GetCurrentProcessId(),pGteInfo->clntData);
			fclose(fp);
		}
		res = 0;	// not used
		break;
	case WFLEVT_SYNCGTEEVENT:
		fp = fopen("wflevents.txt","a+");
		pGteInfo = (GTEEVENTINFO *)ptr;
		if( fp )
		{
			fwprintf(fp,L"%-6d WFLEVT_SYNCGTEEVENT [%s]\n",GetCurrentProcessId(),pGteInfo->clntData);
			fclose(fp);
		}
		res = 1000; // returned by GteApiRaiseSyncAppEvent()
		break;
	default:
		res = 0;
		break;
	}
	return res;		
}

