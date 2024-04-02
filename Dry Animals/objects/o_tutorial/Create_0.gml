ini_open("Gatito.sav");
tutorial = ini_read_real("Tutorial", "tutorial", 0);
if (tutorial = 1)
{
	room_goto(room_tutorial);
    tuto = true;
	
}
else
{
    tuto = false;
}
ini_close();

segundos = 100;
image_index = 0;
image_speed = 0;

