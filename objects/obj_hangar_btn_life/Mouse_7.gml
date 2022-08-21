//buy lives if you have enough money
if(global.money >= global.life_cost){
    lives += 1 //get lives
    global.money -= global.life_cost //take money
    sound_play(snd_teleport);
}
