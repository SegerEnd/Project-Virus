// @description set Step
// Check keys for movement
moveRight = keyboard_check(ord("D"));
moveUp = keyboard_check(ord("W"));
moveLeft = keyboard_check(ord("A"));
moveDown = keyboard_check(ord("S"));

// Calculate movement
vx = ((moveRight - moveLeft) * walkSpeed);
vy = ((moveDown - moveUp) * walkSpeed);
// If Idle
if (vx == 0 && vy == 0) {
// Change idle Sprite based on last direction
switch dir {
	case 0: sprite_index = sprPlayer_idle_right; break;
	case 1: sprite_index = sprPlayer_idle_up; break;
	case 2: sprite_index = sprPlayer_idle_left; break;
	case 3: sprite_index = sprPlayer_idle_down; break;
	}
}

// If moving
if (vx != 0 || vy != 0) {
if !collision_point(x+vx,y,obj_par_environment,true,true) {
x += vx;
}
if !collision_point(x,y+vy,obj_par_environment,true,true) {
y += vy;
}

// Change walking Sprite based on direction
if (vx > 0) {
	sprite_index = sprPlayer_walk_right;
	dir = 0;
	}
if (vx < 0) {
	sprite_index = sprPlayer_walk_left;
	dir = 2;
	}
if (vy > 0) {
	sprite_index = sprPlayer_walk_down;
	dir = 3;
	}
if (vy < 0) {
sprite_index = sprPlayer_walk_up;
	dir = 1;
	}
}

// Depth sorting
depth =-y;

//Shooting cooldown
if (mouse_check_button(mb_left)) && (cooldown < 1)
{
    instance_create_layer(x, y, "Bullet_Layer", obj_bullet);
    cooldown = 7;
}

cooldown = cooldown - 1;

//Shotgun cooldown
if (mouse_check_button(mb_right)) && (shotcooldown < 1)
{
    instance_create_layer(x, y, "Bullet_Layer", obj_boosterBullet);
    shotcooldown = 35;
}

shotcooldown = shotcooldown - 1;
