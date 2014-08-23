//Gather Shrooms
life_actions = life_actions + [player addAction["Gather Shrooms",life_fnc_gatherShrooms,"",0,false,false,"",'
!life_action_in_use && (player distance (getMarkerPos "shroom_area_1") < 150) && (vehicle player == player) && (life_carryWeight + (["shroomsu"] call life_fnc_itemWeight)) <= life_maxWeight ']];

- In Upper Field 

//Pickup Unprocessed Shrooms
life_actions = life_actions +
[player addAction["Pickup Unprocessed Shrooms",life_fnc_pickupItem,false,0,false,false,"",
' !isNull cursorTarget && (typeOf cursorTarget) == "Land_Suitcase_F" && ((cursorTarget getVariable "item") select 0) == "shroomsu" && (player distance cursorTarget) < 3 && (life_carryWeight + (["shroomsu"] call life_fnc_itemWeight)) <= life_maxWeight ']];
//Pickup Processed Magic Mushrooms
life_actions = life_actions +
[player addAction["Pickup Processed Magic Mushrooms",life_fnc_pickupItem,true,0,false,false,"",
' !isNull cursorTarget && (typeOf cursorTarget) == "Land_Suitcase_F" && ((cursorTarget getVariable "item") select 0) == "shroomsp" && (player distance cursorTarget) < 3 && (life_carryWeight + (["shroomsp"] call life_fnc_itemWeight)) <= life_maxWeight ']];

- In Lower Field
