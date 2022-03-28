// Variables
walkSpeed = 5;
vx = 0;
vy = 0;
dir = 3;
moveRight = 0;
moveLeft = 0;
moveUp = 0;
moveDown = 0;

cooldown = 0;
shotcooldown = 0;

healthbar_width = 58;
healthbar_height = 12;
healthbar_x = (1395/2) - (healthbar_width/2);
healthbar_y = ystart - 58;

hp_max = 100;
hp = hp_max;

pickaxe = false;

nearbyNPC = noone;
lookRange = 30;



var saveFile = file_text_open_read("projectvirus.save");

if (file_exists("projectvirus.save")) {
    file_text_readln(saveFile);
    file_text_readln(saveFile);
    room_goto(file_text_read_real(saveFile)); //line 3 room number
    file_text_readln(saveFile);
    file_text_readln(saveFile);
    x = file_text_read_real(saveFile); //Player x axis
    file_text_readln(saveFile);
    file_text_readln(saveFile);
    y = file_text_read_real(saveFile); //player y axis
	file_text_readln(saveFile);
    file_text_readln(saveFile);
	file_text_readln(saveFile);
    file_text_readln(saveFile);
	file_text_readln(saveFile);
    file_text_readln(saveFile);
	file_text_readln(saveFile);
	file_text_readln(saveFile);
    global.pickaxe = file_text_read_string(saveFile);

    file_text_close(saveFile);
}