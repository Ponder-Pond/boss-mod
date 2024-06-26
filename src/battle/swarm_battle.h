/// @file swarm_battle.h
/// Swarm battles are a type of battle where the party is surrounded by enemies on both their left and right sides.

#pragma once

#include "common.h"
#include "battle.h"

extern b32 isSwarmBattle;

f32 swarm_battle_party_x_offset(void);
