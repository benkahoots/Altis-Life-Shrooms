/*
File: fn_gatherShrooms.sqf
Description:
Gathers Shrooms
*/
private["_sum"];
_sum = ["shroomsu",1,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;

if(_sum > 0) then
{
life_action_in_use = true;
titleText["Gathering Shrooms...","PLAIN"];
titleFadeOut 5;
sleep 5;
if(([true,"shroomsu",1] call life_fnc_handleInv)) then
{
titleText["Gatherd Shrooms","PLAIN"];
};
};

life_action_in_use = false;
