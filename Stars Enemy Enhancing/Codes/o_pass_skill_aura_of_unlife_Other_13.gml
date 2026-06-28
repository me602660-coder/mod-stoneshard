event_inherited()
if is_open
{
    var _name = scr_id_get_name(id)
    var _owner = owner
    if (save_counter < 6)
        save_counter++
    else
        save_counter = 1
    if (save_counter == 3 || save_counter == 6)
    {
        with (o_enemy)
        {
            if (scr_tile_distance(o_player, id) < o_player.VSN)
            {
                if (typeID == "dwarf")
                {
                    scr_restore_hp(id, (0.18 * max_hp), _name)
                    with (scr_guiAnimation(s_deathtouch_regen, 1, 1, 0))
                        scr_set_lt()
                }
                else
                    scr_temp_effect_update(other.object_index, id, "Unholy_Resistance", -9, 9, 5)
            }
        }
    }
    if (save_counter == 6)
        scr_ressurection_servant(100, 0.66, 1, owner.VSN, false, 1)
}

