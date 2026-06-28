event_inherited()
if is_open
{
    if (save_counter < 3)
        save_counter++
    else
    {
        save_counter = 1
        var _debuff_applied = false
        var _target_enemy = -4
        var _selected_debuff = choose(o_db_revelation_move, o_db_revelation_fumble, o_db_revelation_item)
        with (o_enemy)
        {
            if (scr_tile_distance(o_player, id) < o_player.VSN && (state == "attack" || state == "search" || state == "alarm"))
            {
                if (!scr_instance_exists_in_list(_selected_debuff))
                {
                    scr_effect_create(_selected_debuff, o_crypt_BossWall03_02, id, id)
                    scr_audio_play_at(snd_ghastlyrevelation_buff)
                    scr_guiAnimation(s_ghastlyrevelation_buff)
                    _debuff_applied = true
                }
                else
                    _target_enemy = id
            }
        }
    }
}

