image_speed = 0;
loTiene = false;
precio = 350;
ini_open("Gatito.sav");
var check = ini_read_real("Skins", "3", -2);
if (check == -2)
{
    loTiene = false;
}
else
{
    loTiene = true;
}
ini_close();

x = 368;
y = 120;


