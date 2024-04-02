image_speed = 0;
loTiene = false;
precio = 550;
ini_open("Gatito.sav");
var check = ini_read_real("Skins", "6", -2);
if (check == -2)
{
    loTiene = false;
}
else
{
    loTiene = true;
}
ini_close();

x = 240;
y = 200;


