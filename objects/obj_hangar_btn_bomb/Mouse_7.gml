//buy lives if you have enough money
if(global.money >= global.bomb_cost){
    global.bombs += 1							//get bombs
    global.money -= global.bomb_cost	//take money
    sound_play(snd_teleport);
}
