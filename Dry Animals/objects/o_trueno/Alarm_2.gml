{
    trueno = true;
    if (choose(1, 2) == 1)
    {
        audio_play_sound(snd_trueno, 1, false)
    }
    else
    {
        audio_play_sound(snd_trueno2, 1, false)
    }

    if (alarm[2] == 0)
    {
        truenoTiempo = irandom_range(5, 10);
        alarm[2] = truenoTiempo * room_speed;
    }
}

