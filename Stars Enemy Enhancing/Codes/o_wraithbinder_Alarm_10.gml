event_inherited()
if roomEntityIsLoaded
    return;
scr_locationRoomEntityInitDataSet("dynamic", roomEntityTag, roomEntityPresetTag)
scr_enemy_create((x + 26), y, choose(o_restless_hero, o_crypt_warden, o_mortician))
scr_enemy_create((x - 26), y, choose(o_skeleton_knightAxe, o_skeleton_knightSword, o_skeleton_knightHammer, o_skeleton_guardianSword, o_skeleton_guardianMace, o_skeleton_guardianAxe, o_ghost_commander, o_ghost_templar))
scr_enemy_create(x, (y - 26), choose(o_skeleton_knightAxe, o_skeleton_knightSword, o_skeleton_knightHammer, o_skeleton_guardianSword, o_skeleton_guardianMace, o_skeleton_guardianAxe, o_ghost_commander, o_ghost_templar))
scr_enemy_create(x, (y + 26), choose(o_skeleton_knightAxe, o_skeleton_knightSword, o_skeleton_knightHammer, o_skeleton_guardianSword, o_skeleton_guardianMace, o_skeleton_guardianAxe, o_ghost_commander, o_ghost_templar))
scr_enemy_create((x + 26), (y - 26), choose(o_skeleton_knightAxe, o_skeleton_knightSword, o_skeleton_knightHammer, o_skeleton_guardianSword, o_skeleton_guardianMace, o_skeleton_guardianAxe, o_ghost_commander, o_ghost_templar))
scr_enemy_create((x - 26), (y - 26), choose(o_skeleton_knightAxe, o_skeleton_knightSword, o_skeleton_knightHammer, o_skeleton_guardianSword, o_skeleton_guardianMace, o_skeleton_guardianAxe, o_ghost_commander, o_ghost_templar))
scr_enemy_create((x + 26), (y + 26), choose(o_skeleton_knightAxe, o_skeleton_knightSword, o_skeleton_knightHammer, o_skeleton_guardianSword, o_skeleton_guardianMace, o_skeleton_guardianAxe, o_ghost_commander, o_ghost_templar))
scr_enemy_create((x - 26), (y + 26), choose(o_skeleton_knightAxe, o_skeleton_knightSword, o_skeleton_knightHammer, o_skeleton_guardianSword, o_skeleton_guardianMace, o_skeleton_guardianAxe, o_ghost_commander, o_ghost_templar))
scr_locationRoomEntityInitDataResetPrevious()