#include <a_samp>
#include <Pawn.CMD>

#define RED_E 		"{FF0000}"

//put in the player data
pStarterpack,

#define PlayerData pData

//put in the command
COMMAND:claim(playerid)
{
  if(pData[playerid][pStarterpack]) return SCM(playerid, RED_E, "You have taken the starterpack");
  pData[playerid][pStarterpack] = 1;
  OnPlayerUpdateAccountsPer(playerid, "pStarterpack", pData[playerid][pStarterpack]);
	GivePlayerMoneyEx(playerid, 500000, "");
	pData[playerid][pLevel] += 1;
	SendClienMessage(playerid, "[SUCCEED] {3BBD44}You have successfully picked up the starterpack, worth $5000.00 and 1 level");
  return 1;
}
