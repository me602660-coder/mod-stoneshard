event_inherited()
if roomEntityIsLoaded
    return;
scr_locationRoomEntityInitDataSet("dynamic", roomEntityTag, roomEntityPresetTag)
scr_enemy_create((x + 26), y, choose(o_bandit_raider, o_bandit_rabblerouser, o_bandit_firestarter))
scr_locationRoomEntityInitDataResetPrevious()