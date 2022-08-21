/// @desc buy if enough money
if(global.tailshot==0){
    if(global.money>=cost){
        global.tailshot=1;
        sound_play(snd_teleport);
        global.money-=cost;
    }
}
