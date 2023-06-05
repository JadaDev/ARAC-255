-- player_factionchange_achievement
CREATE TABLE z_player_factionchange_achievement_backup LIKE player_factionchange_achievement;
INSERT INTO z_player_factionchange_achievement_backup SELECT * FROM player_factionchange_achievement;

-- playercreateinfo
CREATE TABLE z_playercreateinfo_backup LIKE playercreateinfo;
INSERT INTO z_playercreateinfo_backup SELECT * FROM playercreateinfo;

-- playercreateinfo_action
CREATE TABLE z_playercreateinfo_action_backup LIKE playercreateinfo_action;
INSERT INTO z_playercreateinfo_action_backup SELECT * FROM playercreateinfo_action;

-- playercreateinfo_item
CREATE TABLE z_playercreateinfo_item_backup LIKE playercreateinfo_item;
INSERT INTO z_playercreateinfo_item_backup SELECT * FROM playercreateinfo_item;

-- playercreateinfo_skills_custom
CREATE TABLE z_playercreateinfo_skills_custom_backup LIKE playercreateinfo_skills_custom;
INSERT INTO z_playercreateinfo_skills_custom_backup SELECT * FROM playercreateinfo_skills_custom;

-- player_levelstats
CREATE TABLE z_player_levelstats_backup LIKE player_levelstats;
INSERT INTO z_player_levelstats_backup SELECT * FROM player_levelstats;

-- creature_classlevelstats
CREATE TABLE z_creature_classlevelstats_backup LIKE creature_classlevelstats;
INSERT INTO z_creature_classlevelstats_backup SELECT * FROM creature_classlevelstats;

-- pet_levelstats
CREATE TABLE z_pet_levelstats_backup LIKE pet_levelstats;
INSERT INTO z_pet_levelstats_backup SELECT * FROM pet_levelstats;

-- player_classlevelstats
CREATE TABLE z_player_classlevelstats_backup LIKE player_classlevelstats;
INSERT INTO z_player_classlevelstats_backup SELECT * FROM player_classlevelstats;

-- player_xp_for_level
CREATE TABLE z_player_xp_for_level_backup LIKE player_xp_for_level;
INSERT INTO z_player_xp_for_level_backup SELECT * FROM player_xp_for_level;
