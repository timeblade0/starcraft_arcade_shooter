
#region level start supplies
	global.level_start_lives=lives
	global.level_start_shield=global.shield
	global.level_start_bombs=global.bombs
	global.level_start_money=global.money
	global.vertspeed=2.5;
	global.pause=0
#endregion

//room start other
if(room==room_hangar){
	audio_stop_all(); audio_play_sound(snd_mmx3_sigma1,1,1);			
	global.menux=0
	global.menuy=0
}

//room start planet
if(room==room_01_zerg1){			audio_stop_all(); audio_play_sound(snd_sf_snes_corneria,1,1);		} 
if(room==room_02_zerg2){			audio_stop_all(); audio_play_sound(snd_sf_snes_training,1,1);		} 
if(room==room_03_protoss1){			audio_stop_all(); audio_play_sound(snd_sonic_cd_starlight,1,1);		} 
if(room==room_04_zerg3){			audio_stop_all(); audio_play_sound(snd_sf64_area_6,1,1);			} 
if(room==room_05_terran1){			audio_stop_all(); audio_play_sound(snd_kss_halberd_1,1,1);			}
if(room==room_06_zerg4){			audio_stop_all(); audio_play_sound(snd_super_metroid_brinstar,1,1);	} 
if(room==room_07_terran2){			audio_stop_all(); audio_play_sound(snd_btdd_robo_manus,1,1);		}
if(room==room_08_zerg5){			audio_stop_all(); audio_play_sound(snd_sf64_bolse,1,1);				} 
if(room==room_09_zerg6){			audio_stop_all(); audio_play_sound(snd_btdd_abobo,1,1);				}
if(room==room_10_protoss2){			audio_stop_all(); audio_play_sound(snd_mmx3_hornet,1,1);			}

//room start boss
if(room==room_01_zerg1_boss){		audio_stop_all(); audio_play_sound(snd_sf_snes_boss_titania,1,1);	}
if(room==room_02_zerg2_boss){		audio_stop_all(); audio_play_sound(snd_sf_snes_boss_meteor,1,1);	} 
if(room==room_03_protoss1_boss){	audio_stop_all(); audio_play_sound(snd_sf_snes_boss_titania,1,1);	} 
if(room==room_04_zerg3_boss){		audio_stop_all(); audio_play_sound(snd_sf_snes_boss_meteor,1,1);	} 
if(room==room_05_terran1_boss){		audio_stop_all(); audio_play_sound(snd_kss_halberd_2,1,1);			} 
if(room==room_06_zerg4_boss){		audio_stop_all(); audio_play_sound(snd_super_metroid_boss_1,1,1);	} 
if(room==room_07_terran2_boss){		audio_stop_all(); audio_play_sound(snd_sf_snes_boss_titania,1,1);	} 
if(room==room_08_zerg5_boss){		audio_stop_all(); audio_play_sound(snd_sf_snes_boss_meteor,1,1);	} 
if(room==room_09_zerg6_boss){		audio_stop_all(); audio_play_sound(snd_sf_snes_boss_titania,1,1);	} 
if(room==room_10_protoss2_boss){	audio_stop_all(); audio_play_sound(snd_sf_snes_boss_meteor,1,1);	} 