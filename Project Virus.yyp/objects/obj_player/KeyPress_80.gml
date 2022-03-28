var saveFile = file_text_open_write("projectvirus.save");

file_text_write_string(saveFile, "[Player]");
file_text_writeln(saveFile);
file_text_write_string(saveFile, "Current room:");
file_text_writeln(saveFile);
file_text_write_string(saveFile, room);
file_text_writeln(saveFile);
file_text_write_string(saveFile, "Player x axis:");
file_text_writeln(saveFile);
file_text_write_real(saveFile, obj_player.x);
file_text_writeln(saveFile);
file_text_write_string(saveFile, "Player y axis:");
file_text_writeln(saveFile);
file_text_write_real(saveFile, obj_player.y);
file_text_writeln(saveFile);
file_text_write_string(saveFile, "Player score:");
file_text_writeln(saveFile);
file_text_write_real(saveFile, obj_score.thescore);
file_text_writeln(saveFile);
file_text_writeln(saveFile);
file_text_write_string(saveFile, "[Objects]");
file_text_writeln(saveFile);
file_text_write_string(saveFile, "Stone 1 destroyed:")
file_text_writeln(saveFile);
file_text_write_string(saveFile,global.rock1destroyed)
file_text_writeln(saveFile);
file_text_write_string(saveFile, "Pickaxe collected:")
file_text_writeln(saveFile);
file_text_write_string(saveFile, global.pickaxe)
file_text_writeln(saveFile);
file_text_writeln(saveFile);

file_text_write_string(saveFile, "[Options]");
file_text_writeln(saveFile);
file_text_write_string(saveFile, "Coming soon!");

file_text_writeln(saveFile);
file_text_writeln(saveFile);
file_text_write_string(saveFile, "Game made by: Bram & Seger");

file_text_close(saveFile);