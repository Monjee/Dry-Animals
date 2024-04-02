image_speed = 0;
loTiene = false;
precio = 150
ini_open("Gatito.sav");
var check = ini_read_real("Skins", "1", -2);
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
y = 120;

