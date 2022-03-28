//Healthbar GUI
draw_sprite(spr_infectionBar,0,healthbar_x,healthbar_y);
draw_sprite_stretched(spr_healthBar,0,healthbar_x,healthbar_y,(hp/hp_max) * healthbar_width,healthbar_height);
draw_sprite(spr_healthbarBorder,0,healthbar_x,healthbar_y);