//@Description Context-sensitive actions

// Create a textbox if NPC is nearby
if (nearbyNPC) {
	if (!instance_exists(obj_textbox)) {
		instance_create_depth(x,y,-10000,obj_textbox);
		}
	}

if room == rm_gameMain {
	if distance_to_object(inst_MOVABLE_ROCK) <= 20 {
		if room == rm_gameMain && global.pickaxe == "True" {
			global.rock1destroyed = "True"
			inst_MOVABLE_ROCK.visible = false;
			inst_MOVABLE_ROCK.x = 672;
			inst_MOVABLE_ROCK. y = 640;
			}
	}
}