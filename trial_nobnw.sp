#pragma semicolon 1

#include <sourcemod>

public Plugin:myinfo = {
	name = "L4D2-Trial - Black&White Remover",
	author = "Stabby",
	description = "Disables the black & white effect when survivors are an incap away from death.",
	version = "1",
	url = "https://github.com/Stabbath/L4D2-Trial"
}

public OnPluginStart() {
	HookEvent("revive_success", Evt_ReviveSuccess);
}

public Evt_ReviveSuccess(Handle:event, const String:name[], bool:dontBroadcast) {
	new client = GetClientOfUserId(GetEventInt(event, "subject"));
	SetEntProp(client, Prop_Send, "m_bIsOnThirdStrike", 0);
}
