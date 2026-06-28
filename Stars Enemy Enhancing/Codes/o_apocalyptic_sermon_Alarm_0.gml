if (instance_exists(owner) && instance_exists(target))
{
    var _debuff_count = 0

    with (target)
    {
        if object_is_ancestor(object_index, o_unit)
        {
            Body_Part_target = scr_choose_body_part("head")
            _debuff_count = scr_instance_in_list(5847, buffs, false)
            scr_guiAnimation_ext(x, y, 14273)
            scr_audio_play_at(snd_apocalypticsermon_hit_1)
        }
    }

    Unholy_Damage = 6 + 3 * _debuff_count
    Psionic_Damage = 6

    scr_skill_damage()

    if instance_exists(owner)
    {
        with (owner)
            scr_temp_incr_atr("Magic_Power", 6, noone, id, id)
    }
}

instance_destroy()