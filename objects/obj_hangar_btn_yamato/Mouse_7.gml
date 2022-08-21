/// @desc buy if enough money
if(global.yamato==0){
    if(global.money>=cost){
        global.yamato=1;
        sound_play(snd_teleport);
        global.money-=cost;
    }
}
