#pragma semicolon 1

#include <sourcemod>

public Plugin:myinfo = {
	name = "L4D2-Trial - HUD Remover",
	author = "Stabby",
	description = "Completely hides every aspect of the HUD.",
	version = "1",
	url = "https://github.com/Stabbath/L4D2-Trial"
}

public OnClientPutInServer(client) {
	if (!IsFakeClient(client)) {
		SetEntProp(client, Prop_Send, "m_iHideHUD", 4);
	}
}
