function cuentaDeMuertes() {
	//GoogleMobileAds_UseTestAds(true, "4B785B83455A0C68229DF2E436D3074C")
	//GoogleMobileAds_Init("ca-app-pub-3940256099942544/1033173712"); //Test
	//GoogleMobileAds_Init("ca-app-pub-7076883787891542/2089613191");


	deathCount += 1;
	ini_open("Gatito.sav");
	ini_write_real("DeathCount", "deathCount", deathCount);
	if (deathCount > 6)
	{
	    deathCount = 0;
	    muertoTimer = true;
	    ini_write_real("DeathCount", "deathCount", 0);
	    //GoogleMobileAds_UseTestAds(true, "4B785B83455A0C68229DF2E436D3074C"); //ID de 
	    //GoogleMobileAds_Init("ca-app-pub-3940256099942544/1033173712"); //Ad test
	   // GoogleMobileAds_Init("ca-app-pub-7076883787891542/2089613191");
	    //GoogleMobileAds_LoadInterstitial();
	}
	ini_close();



}
