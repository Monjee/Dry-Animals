image_speed = 0;
loTiene = false;
precio = 1500;
ini_open("Gatito.sav");
var check = ini_read_real("Skins", "8", -2);
if (check == -2)
{
    loTiene = false;
}
else
{
    loTiene = true;
}
ini_close();

x = 432;
y = 200;


