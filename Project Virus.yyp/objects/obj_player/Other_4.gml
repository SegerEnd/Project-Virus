var saveFile = file_text_open_read("projectvirus.save");
    if room = rm_gameMain{
        if file_exists("projectvirus.save") {
        file_text_readln(saveFile);
        file_text_readln(saveFile);
        file_text_readln(saveFile);
        file_text_readln(saveFile);
        file_text_readln(saveFile);
        file_text_readln(saveFile);
        file_text_readln(saveFile);
        file_text_readln(saveFile);
        file_text_readln(saveFile);
        file_text_readln(saveFile);
        file_text_readln(saveFile);
        file_text_readln(saveFile);
        if file_text_read_string(saveFile) or global.rock1destroyed == "True" {
            global.rock1destroyed = "True";
            if room == rm_gameMain {
            inst_MOVABLE_ROCK.visible = false;
            inst_MOVABLE_ROCK.x = 672;
            inst_MOVABLE_ROCK. y = 640;
            }
        else{
            global.rock1destroyed = "False";
            inst_MOVABLE_ROCK.visible = true;
            inst_MOVABLE_ROCK.x = 608;
            inst_MOVABLE_ROCK. y = 672;
            }

        file_text_close(saveFile);
    }
}
    }