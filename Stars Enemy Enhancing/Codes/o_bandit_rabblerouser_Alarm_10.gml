event_inherited()
if roomEntityIsLoaded
    return;
scr_locationRoomEntityInitDataSet("dynamic", roomEntityTag, roomEntityPresetTag)
scr_enemy_create((x + 26), y, choose(o_bandit_overseer, o_bandit_madman, o_bandit_kingpin))
scr_locationRoomEntityInitDataResetPrevious()