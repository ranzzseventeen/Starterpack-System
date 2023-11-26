#include <a_samp>
#include <Pawn.CMD>

#define RED_E 		"{FF0000}"

//put in the player data
pStarterpack,

//put in the command
COMMAND:claim(playerid)
{
  if(pInfo[playerid][pStarterpack]) return SCM(playerid, RED_E, "You have taken the starterpack");
  pInfo[playerid][pStarterpack] = 1;
  OnPlayerUpdateAccountsPer(playerid, "starterpack", pInfo[playerid][pStarterpack]);
	GivePlayerMoneyEx(playerid, 500000, "");
	pInfo[playerid][pLevel] += 1;
	SendClienMessage(playerid, -1, "[SUCCEED] {3BBD44}You have successfully picked up the starterpack, worth $5000.00 and 1 level");
  return 1;
}
