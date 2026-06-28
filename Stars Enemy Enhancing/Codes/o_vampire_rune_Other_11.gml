Unholy_Damage = 0
if is_execute
    return;
var _target = target
var _owner = owner
if (instance_exists(_target) && instance_exists(_owner))
{
    if (_target.typeID != "vampire")
    {
        Unholy_Damage = 9 * _owner.Magic_Power / 100
        Bodypart_Target = choose("rlegs", "legs")
        event_inherited()
    }
    else
    {
        if instance_exists(_target)
        {
            with (_target)
                scr_restore_hp(id, (0.09 * max_hp), scr_actionsLogGetName(other.id))
        }
        damage_done = 0
    }
    if instance_exists(_target)
    {
        with (_target)
        {
            scr_guiAnimation_ext(x, y, s_signofdarkness_impact, 1, 1, 0, 16777215, 0)
            scr_audio_play_at(snd_vampire_rune_impact)
        }
    }
    if (damage_done > 0)
    {
        if (instance_exists(_target) && instance_exists(_owner) && scr_chance_value(26 - _target.Knockback_Resistance))
            scr_effect_create(o_db_immob, 3, _target, _owner)
        if instance_exists(_owner)
        {
            with (_owner)
            {
                if (!is_player(id))
                    scr_temp_incr_atr("max_hp", 6, noone, id, id)
                else
                    scr_temp_incr_atr("max_hp", 6, 10, id, id)
            }
        }
    }
}