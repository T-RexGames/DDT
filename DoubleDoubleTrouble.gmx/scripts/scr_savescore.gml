if(file_exists("Score.ini")) file_delete("Score.ini");
ini_open("Score.ini");
ini_write_real("Save1","points",global.highScore);
ini_close();
