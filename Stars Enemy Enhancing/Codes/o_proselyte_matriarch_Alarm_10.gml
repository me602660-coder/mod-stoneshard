event_inherited()
if roomEntityIsLoaded
    return;
scr_locationRoomEntityInitDataSet("dynamic", roomEntityTag, roomEntityPresetTag)
scr_enemy_create((x + 26), y, choose(o_proselyte_abomination, o_proselyte_apostate))
scr_locationRoomEntityInitDataResetPrevious()