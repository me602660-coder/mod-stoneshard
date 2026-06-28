event_inherited()
if roomEntityIsLoaded
    return;
scr_locationRoomEntityInitDataSet("dynamic", roomEntityTag, roomEntityPresetTag)
scr_enemy_create((x + 26), (y + 26), choose(o_necromancer, o_archivist))
if scr_chance_value(50)
    scr_enemy_create((x + 26), y, choose(o_skeleton_footman, o_skeleton_militiaman, o_skeleton_defender, o_skeleton_priest))
else
    scr_enemy_create((x - 26), y, choose(o_skeleton_footman, o_skeleton_militiaman, o_skeleton_defender))
scr_locationRoomEntityInitDataResetPrevious()