if ((!is_execute) && instance_exists(owner) && instance_exists(target))
{
    xx = owner.skill_summon_x
    yy = owner.skill_summon_y
    is_execute = true
    var _entityID = choose(o_proselyte_wormbearer, o_proselyte_juggernaut, o_proselyte_anmarrak, o_proselyte_begotten, o_proselyte_admonisher, o_proselyte_brander)
    var _spr = object_get_sprite(_entityID)
    if (_entityID != noone)
    {
        with (scr_enemy_summon(xx, yy, _entityID, s_proselyte_murkstalker01_spawn, owner))
        {
            new_sprite = _spr
            create_snd = choose(snd_proselyte_fiend_2hmace01_spawn_1, snd_proselyte_fiend_2hmace01_spawn_2, snd_proselyte_fiend_2hmace01_spawn_3, snd_proselyte_fiend_2hmace01_spawn_4)
        }
    }
    if (owner.skill_summon_x2 != -1)
    {
        xx = owner.skill_summon_x2
        yy = owner.skill_summon_y2
        _entityID = choose(o_proselyte_yagram, o_proselyte_anointed, o_proselyte_templar_mace, o_proselyte_templar_sword, o_proselyte_bloodhunter, o_proselyte_cherub_axe, o_proselyte_cherub_spear, o_proselyte_ecclesiarch, o_proselyte_chainbound, o_proselyte_murkstalker, o_proselyte_impaler, o_proselyte_saggul, o_proselyte_girrud, o_proselyte_fiend_2haxe, o_proselyte_fiend_2hmace)
        _spr = object_get_sprite(_entityID)
        if (_entityID != noone)
        {
            with (scr_enemy_summon(xx, yy, _entityID, s_proselyte_murkstalker01_spawn, owner))
            {
                new_sprite = _spr
                create_snd = choose(snd_proselyte_fiend_2hmace01_spawn_1, snd_proselyte_fiend_2hmace01_spawn_2, snd_proselyte_fiend_2hmace01_spawn_3, snd_proselyte_fiend_2hmace01_spawn_4)
            }
        }
    }
}