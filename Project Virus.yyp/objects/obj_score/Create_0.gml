//Score
thescore = 0;

var saveFile = file_text_open_read("projectvirus.save");

if (file_exists("projectvirus.save")) {
    file_text_readln(saveFile);
    file_text_readln(saveFile);
    file_text_readln(saveFile);
    file_text_readln(saveFile);
    file_text_readln(saveFile);
    file_text_readln(saveFile);
    file_text_readln(saveFile);
    file_text_readln(saveFile);
    thescore = file_text_read_real(saveFile);
}