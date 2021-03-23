// includes
#include <sourcemod>
#include <sdktools>
new Handle:gravity;
// Plugin author and url
public Plugin:myinfo = 
{
	name = "Roun End Gravity",
	author = "Chris187",
	description = "Roun End Gravity",
	version = "0.1",
	url = "https://cgaming.eu/"
}
public void OnPluginStart() 
{
	HookEvent("round_start", OnStart, EventHookMode:1);
	HookEvent("round_end", OnEnd, EventHookMode:1);
	gravity = FindConVar("sv_gravity");
}

public void OnStart(Handle:event, String:name[], bool:dontBroadcast)
{
	SetConVarInt(gravity, 780, false, false);
}

public void OnEnd(Handle:event, String:name[], bool:dontBroadcast)
{
	SetConVarInt(gravity, 210, false, false);
}