
/*****************************************************************************
This is a source code for sample user gte-extention dll: gteext.dll
Note the GteApiInitialize() call in DllMain used to initialize the GteApi.
File contains three RPC functions which are called from testcapi.exe sample
application using the TApiSyncRPC, TApiSyncRPC_VSR and TApiAsyncRPC functions.
******************************************************************************/

#define GTEEXT_EXPORTS

#include "windows.h"
#include "gteapi.h"
#include "gteext.h"


void CreateGteEventThread( void );

// Var used to stop thread from DLL_PROCESS_DETACH
int bStopThread = 0;	


BOOL APIENTRY DllMain( HANDLE hModule, 
                       DWORD  ul_reason_for_call, 
                       LPVOID lpReserved
					 )
{
	switch (ul_reason_for_call)
	{
		case DLL_PROCESS_ATTACH:
			if( GteApiInitialize() != TAPI_SUCCESS )		// initialize api access
				return FALSE;	// extention DLL will not load if we are unable to initialize API access
			CreateGteEventThread();	// start smaple event thread
			break;

		case DLL_THREAD_ATTACH:
			break;
		case DLL_THREAD_DETACH:
			break;
		case DLL_PROCESS_DETACH:
			// stop event thread or it will GPF after DLL unload
			bStopThread = 1;
			Sleep(2000);	// and give it some time to terminate 
			break;
	}
    return TRUE;
}



// This function will be called asynchronously. Application doesn't wait for it to complete.
// It executes terminal-side Beep() function using application-supplied parameters.
extern "C" GTEEXT_API void UserAsyncRPCBeepCallback(void *pCallData,int callDataSize)
{
	RPCBEEP_PARS *pBeepp = (RPCBEEP_PARS *)pCallData;	// get a pointer to parameter data
	if( pBeepp )
	{	// and perform our task
		Beep(pBeepp->dwFreq,pBeepp->dwDuration);
	}
	// We can't return any values from asynchronous RPC callback because application
	// has already advanced and does not wait for any result.
}



// This function will be called synchronously. The result of MessageBox() function
// call will be returned to the calling application
// It executes terminal-side MessagegBox() function using application-supplied parameters.
extern "C" GTEEXT_API void UserSyncRPCMsgBoxCallback(void *pCallData,int callDataSize,void *pResData,int *pMaxResDataSize )
{
	RPCMSGBOX_PARS *pMbp = (RPCMSGBOX_PARS*)pCallData;
	RPCMSGBOX_ANSW *pMbr = (RPCMSGBOX_ANSW *)pResData;
	if( pMbp )
	{
		// map window network ID to terminal window handle
		HWND hOwnerWnd = GteApiNetIdToHwnd(pMbp->wndnet);
		int res = MessageBoxW(hOwnerWnd,pMbp->msg,L"Remote",pMbp->mbType);
		if( pResData )
		{
			pMbr->mbResult = res;	// set the result value
			// Following line is not required here because *pMaxResDataSize is set by default
			// to the maximum allowed result size which is sizeof(RPCMSGBOX_ANSW) in our case.
			// Set the returning result size if you return less data then the maximum allowed amount.
			*pMaxResDataSize = sizeof(RPCMSGBOX_ANSW);	
		}
	}
}



// Following function illustrates how to return a variable-size result from RPC function.
// This function will be called synchronously. It replicates the supplied string from 2 to 5 times
// and returns the result to the application.
// Pay special attention to avoid calling variable-sized result RPC function as normal RPC function
// or vice-versa. Parameters have different meaning in these cases and you'll end with GPF.
extern "C" GTEEXT_API void UserSyncRPCRandomReplicateCallback(void *pCallData,int callDataSize,void **pResData,int *pMaxResDataSize )
{
	WCHAR *pString = (WCHAR*)pCallData;
	int resultSize=0;
	if( pString )
	{
		srand(GetTickCount());	// initialize random seed
		int rplFactor = 2+(rand()&3);	// this will give us number 2 to 5
		RPCRANDOMREPLICATE_ANSW *pRRa;	// pointer to the result memory
		// Note that our result size should account for the replicated string which will
		// follow the RPCRANDOMREPLICATE_ANSW structure
		resultSize = (int)sizeof(RPCRANDOMREPLICATE_ANSW)+rplFactor*(((int)wcslen(pString)+1)*sizeof(WCHAR));
		// When we allocate memory for variable-sized result we _must_ use GteApiMemGlobalAlloc function.
		// Allocated block will be released by gte.exe runtime and we'll get GPF if we allocate it in the other way.
		pRRa = (RPCRANDOMREPLICATE_ANSW *)GteApiMemGlobalAlloc(resultSize);
		if( pRRa )
		{
			pRRa->rplFact = rplFactor;
			pRRa->rplStr[0] = '\0';
			// copy and replicate the string
			for(int i=1;i<=rplFactor;i++)
				wcscat(pRRa->rplStr,pString);
			// In case of variable-sized result pResdata is a void** pointer where we store
			// pointer to our allocated result memory block
			*pResData = pRRa;
			// Finally we pass back to the terminal runtime the size of our result
			*pMaxResDataSize = resultSize;
		}
	}
	// NOTE: If we were unable to allocate memory for result the caller will receive
	// the 0-sized result which in our case indicates an error.
	// We don't free pRRa memory block. Runtime will release it by calling
	// GteApiMemGlobalFree() function.
}

DWORD WINAPI SampleEventGenerationThread( LPVOID lpThreadParameter )
{
	int evtNum = 1;
	// enter infinite loop that generates asynchronous applictaion event every second
	WCHAR strbuf[255];
	for(;;)
	{
		Sleep(1000);
		if( bStopThread )
			break;	// terminate this thread 

		// prepare data for event
		wsprintfW(strbuf,L"Async event number %d",evtNum++);
		// and raise event
		int res = GteApiRaiseAsyncAppEvent(strbuf,(wcslen(strbuf)+1)*sizeof(WCHAR));
		if( res != TAPI_SUCCESS )
			break;	// exit loop if error (most probably gte disconnected and TAPI_NOCONN returned)
	}
	return 0;
}


// This will start SampleEventGenerationThread() thread which will raise event every second
// Event will be delivered to application main thread, provided application has registered callback
// function by calling TApiRegisterAppCallback() (see testcapi sample application)
// In our sample WinflectorEventCallback() callback function will be called.
void CreateGteEventThread( void )
{
	HANDLE hEventThread = CreateThread(NULL,0,(LPTHREAD_START_ROUTINE)SampleEventGenerationThread,NULL,0,NULL);
}