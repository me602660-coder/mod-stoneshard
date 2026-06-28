event_inherited()
if roomEntityIsLoaded
    return;
scr_locationRoomEntityInitDataSet("dynamic", roomEntityTag, roomEntityPresetTag)
scr_enemy_create((x + 26), y, choose(o_necromancer, o_archivist))
scr_locationRoomEntityInitDataResetPrevious()