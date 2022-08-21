
#region control init var
	global.level=1;
	global.vertspeed=2.5;
	global.pause=0
	global.gameover=0
	global.message=0
	menu_selection=0		#region menu button definitions
								//0=pause	
								//1=restart level		
								//2=return to hangar
								//3=exit game
							#endregion
	alarm[0]=1		//allow time for vaiables to initialize before going to title room
#endregion

#region initial lives, bombs, and weapons
	lives=5;
	global.bombs=3;
	global.shield=100;
	global.money=0;
	global.yamato=0;
	global.quadshot=0;
	global.tailshot=0;
#endregion

#region define levels
	global.level_room[1]=room_01_zerg1;
	global.level_room[2]=room_02_zerg2;
	global.level_room[3]=room_03_protoss1;
	global.level_room[4]=room_04_zerg3;
	global.level_room[5]=room_05_terran1;
	global.level_room[6]=room_06_zerg4;
	global.level_room[7]=room_07_terran2;
	global.level_room[8]=room_08_zerg5;
	global.level_room[9]=room_09_zerg6;
	global.level_room[10]=room_10_protoss2;
#endregion

#region define hangar prices
	global.life_cost=1000;
	global.bomb_cost=1000;
	global.yamato_cost=25000;
	global.quadshot_cost=25000;
	global.tailshot_cost=25000;
#endregion

//map esc to enter
keyboard_set_map(vk_escape,vk_enter);