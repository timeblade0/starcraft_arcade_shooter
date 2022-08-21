/// @desc buy if enough money
if(global.quadshot==0){
    if(global.money>=cost){
        global.quadshot=1;
        sound_play(snd_teleport);
        global.money-=cost;
    }
}