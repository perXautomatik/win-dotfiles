#ifndef _GTRMVER_H_
#define _GTRMVER_H_

/*****************************************************************************
This file contains defines specifying the version of Terminal package being
compiled.
******************************************************************************/

#define GTERMINAL_MAJOR    3
#define GTERMINAL_MINOR    9
#define GTERMINAL_RELEASE  6
#define GTERMINAL_BUGFIX   5

#define GTERMINAL_SERVER_PATCH   ' '         // starting with letter 'a' 
#define GTERMINAL_CLIENT_PATCH   ' '         // starting with letter 'a' 

#define STRINGIFY(x)  #x
#define TOSTRING(x) STRINGIFY(x)
#define GTE_RC_VER  TOSTRING(GTERMINAL_MAJOR) "." TOSTRING(GTERMINAL_MINOR) "." TOSTRING(GTERMINAL_RELEASE) "." TOSTRING(GTERMINAL_BUGFIX)
#define GTE_TEXT_VER   "TrmFileVersion:" GTE_RC_VER
#define MTE_RC_VER  TOSTRING(GTERMINAL_MAJOR) "." TOSTRING(GTERMINAL_MINOR) "." TOSTRING(GTERMINAL_RELEASE) "." TOSTRING(GTERMINAL_BUGFIX)
#define MTE_TEXT_VER   "TrmFileVersion:" MTE_RC_VER

#define CNETLIB_RC_VER  TOSTRING(GTERMINAL_MAJOR) "." TOSTRING(GTERMINAL_MINOR) "." TOSTRING(GTERMINAL_RELEASE) "." TOSTRING(GTERMINAL_BUGFIX)

// Structure used to store complete version info 
#pragma pack(4)
typedef struct {
	int trmMajor;
	int trmMinor;
	int trmRelease;
	int trmBugfix;
	int trmServerPatch;
	int trmClientPatch;
} GTRMVERSION;

#pragma pack()

#endif /* _GTRMVER_H_ */
