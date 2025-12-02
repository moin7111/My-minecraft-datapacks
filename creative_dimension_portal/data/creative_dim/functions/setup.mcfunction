# Create all objectives only once
scoreboard objectives add creative_enter trigger
scoreboard objectives add creative_exit trigger
scoreboard objectives add cdim_inside dummy
scoreboard objectives add cdim_dim dummy
scoreboard objectives add cdim_uid dummy
scoreboard objectives add cdim_gm dummy
scoreboard objectives add cdim_flag dummy

# Initialize helper scores
scoreboard players set #cdim_uid_counter cdim_uid 0
scoreboard players set #cdim_return_target cdim_uid 0
scoreboard players set #cdim_return_dim cdim_dim 0
scoreboard players set #cdim_return_success cdim_flag 0

# Mark setup as complete so we do not rerun it
data modify storage creative_dim:state initialized set value 1b
