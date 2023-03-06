#ifndef __GTEEXT__
#define __GTEEXT__

/*****************************************************************************
This file contains defines for sample user gte-extention dll: gteext.dll
******************************************************************************/

#ifdef GTEEXT_EXPORTS
#define GTEEXT_API __declspec(dllexport)
#else
#define GTEEXT_API __declspec(dllimport)
#endif



// Below defines for our sample RPC calls
// Functions to be called are in gteext.dll. They are called from testcapi.exe sample
// application

// Our structure for passing parameters to RPC Beep function
#pragma pack(4)
typedef struct {
	DWORD dwFreq;
	DWORD dwDuration;
} RPCBEEP_PARS;

// Our structure for passing parameters to RPC MessageBox function
#pragma pack(4)
typedef struct {
	WNDNETID wndnet;	// owner window for MessageBox
	int mbType;			// type of message box i.e. MB_OKCANCEL
	wchar_t msg[256];	// message to display
} RPCMSGBOX_PARS;

// Our structure for returning result from RPC MsgBox function
#pragma pack(4)
typedef struct {
	int mbResult;	// result returned by MessageBox
} RPCMSGBOX_ANSW;



// Our structure for returning result from RPC RandomReplicate function
#pragma pack(4)
typedef struct {
	int rplFact;		// replication factor
	WCHAR rplStr[1];	// start of the replicated string
} RPCRANDOMREPLICATE_ANSW;

#pragma pack()

#endif