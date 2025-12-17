function Subtitle_Cutscene_Tutorial(VideoPosition)
{
	if Localize.Meta.LanguageNameNative = "dutch"
	{
		if VideoPosition >=		 2.260	 and VideoPosition <= 6.580	  {return Localize.Subtitles.Cutscenes.Tutorial.Line01} //"Welkom bij Zelda's Adventure, een actie-avonturen rollenspel."
		else if VideoPosition >= 7.379	 and VideoPosition <= 12.053  {return Localize.Subtitles.Cutscenes.Tutorial.Line02} //"Als speler neem je de persoonlijkheid aan van onze heldin Prinses Zelda."
		else if VideoPosition >= 12.719	 and VideoPosition <= 17.673  {return Localize.Subtitles.Cutscenes.Tutorial.Line03} //"Om het spel succesvol te spelen, moet je het grote land Tolemac verkennen."
		else if VideoPosition >= 18.267	 and VideoPosition <= 20.993  {return Localize.Subtitles.Cutscenes.Tutorial.Line04} //"Om Zelda's beweging door Tolemac te besturen"
		else if VideoPosition >= 21.266	 and VideoPosition <= 26.426  {return Localize.Subtitles.Cutscenes.Tutorial.Line05} //"beweeg je de controller naar links, rechts, omhoog, omlaag en diagonaal."
		else if VideoPosition >= 27.307	 and VideoPosition <= 30.985  {return Localize.Subtitles.Cutscenes.Tutorial.Line06} //"De hofastronoom Gaspra zal het verhaal van Zelda introduceren"
		else if VideoPosition >= 31.010	 and VideoPosition <= 33.556  {return Localize.Subtitles.Cutscenes.Tutorial.Line07} //"en beschrijven hoe haar zoektocht tot stand is gekomen."
		else if VideoPosition >= 33.751	 and VideoPosition <= 36.665  {return Localize.Subtitles.Cutscenes.Tutorial.Line08} //"Hij zal ook telkens weer verschijnen"
		else if VideoPosition >= 36.690	 and VideoPosition <= 40.320  {return Localize.Subtitles.Cutscenes.Tutorial.Line09} //"als Zelda met succes een tempel in de onderwereld heeft voltooid"
		else if VideoPosition >= 40.573	 and VideoPosition <= 44.397  {return Localize.Subtitles.Cutscenes.Tutorial.Line10} //"en een van de zeven kostbare Hemelse Tekens heeft verzameld."
		else if VideoPosition >= 45.166	 and VideoPosition <= 48.859  {return Localize.Subtitles.Cutscenes.Tutorial.Line11} //"Een andere mentor en gids voor Zelda ben ik, Shurmak."
		else if VideoPosition >= 49.107	 and VideoPosition <= 52.254  {return Localize.Subtitles.Cutscenes.Tutorial.Line12} //"Gedurende het spel help ik Zelda te oriënteren en haar te begeleiden."
		else if VideoPosition >= 53.011	 and VideoPosition <= 54.173  {return Localize.Subtitles.Cutscenes.Tutorial.Line13} //"Tijdens haar verkenningstocht"
		else if VideoPosition >= 54.198	 and VideoPosition <= 57.426  {return Localize.Subtitles.Cutscenes.Tutorial.Line14} //"zal Zelda veel vijanden tegenkomen die dit land bewonen."
		else if VideoPosition >= 57.700	 and VideoPosition <= 61.474  {return Localize.Subtitles.Cutscenes.Tutorial.Line15} //"Ze moet ze verslaan door vaardigheid en snelheid te gebruiken."
		else if VideoPosition >= 61.970	 and VideoPosition <= 63.977  {return Localize.Subtitles.Cutscenes.Tutorial.Line16} //"Zelda valt ze aan met haar toverstaf."
		else if VideoPosition >= 64.396	 and VideoPosition <= 68.230  {return Localize.Subtitles.Cutscenes.Tutorial.Line17} //"Je gebruikt de toverstaf door op Actieknop 1 te drukken."
		else if VideoPosition >= 69.057	 and VideoPosition <= 73.526  {return Localize.Subtitles.Cutscenes.Tutorial.Line18} //"Als Zelda succesvol is in het verslaan van haar vijanden, wordt ze beloond."
		else if VideoPosition >= 73.776	 and VideoPosition <= 76.129  {return Localize.Subtitles.Cutscenes.Tutorial.Line19} //"Ze laten willekeurig robijnen en harten vallen"
		else if VideoPosition >= 76.154	 and VideoPosition <= 79.843  {return Localize.Subtitles.Cutscenes.Tutorial.Line20} //"die respectievelijk haar valuta en levenseenheden verhogen."
		else if VideoPosition >= 80.639	 and VideoPosition <= 83.159  {return Localize.Subtitles.Cutscenes.Tutorial.Line21} //"Robijnen, de valuta van Tolemac"
		else if VideoPosition >= 83.218	 and VideoPosition <= 85.359  {return Localize.Subtitles.Cutscenes.Tutorial.Line22} //"kunnen worden gebruikt om nuttige voorwerpen te kopen"
		else if VideoPosition >= 85.384	 and VideoPosition <= 88.860  {return Localize.Subtitles.Cutscenes.Tutorial.Line23} //"en worden aangegeven in de linkerbovenhoek van het scherm."
		else if VideoPosition >= 89.529	 and VideoPosition <= 92.369  {return Localize.Subtitles.Cutscenes.Tutorial.Line24} //"Harten zijn de levenseenheden die Zelda kracht geven"
		else if VideoPosition >= 92.394	 and VideoPosition <= 94.443  {return Localize.Subtitles.Cutscenes.Tutorial.Line25} //"om te vechten tijdens het spel."
		else if VideoPosition >= 94.602	 and VideoPosition <= 98.068  {return Localize.Subtitles.Cutscenes.Tutorial.Line26} //"Ze worden weergegeven in de rechterbovenhoek van het speelscherm."
		else if VideoPosition >= 98.688	 and VideoPosition <= 102.052 {return Localize.Subtitles.Cutscenes.Tutorial.Line27} //"Om een voorwerp of een wapen te selecteren in het inventarisscherm"
		else if VideoPosition >= 102.076 and VideoPosition <= 104.461 {return Localize.Subtitles.Cutscenes.Tutorial.Line28} //"druk je op Actieknop 2."
		else if VideoPosition >= 105.297 and VideoPosition <= 107.365 {return Localize.Subtitles.Cutscenes.Tutorial.Line29} //"Eenmaal in het inventarisscherm"
		else if VideoPosition >= 107.438 and VideoPosition <= 110.371 {return Localize.Subtitles.Cutscenes.Tutorial.Line30} //"heb je toegang tot nuttige voorwerpen en wapens"
		else if VideoPosition >= 110.396 and VideoPosition <= 114.936 {return Localize.Subtitles.Cutscenes.Tutorial.Line31} //"door een voorwerp te selecteren met je cursor en op Actieknop 1 te drukken."
		else if VideoPosition >= 115.706 and VideoPosition <= 119.660 {return Localize.Subtitles.Cutscenes.Tutorial.Line32} //"Schatten en wapens kun je scrollen door op de linker vensterknop te drukken"
		else if VideoPosition >= 119.685 and VideoPosition <= 120.801 {return Localize.Subtitles.Cutscenes.Tutorial.Line33} //"om naar links te gaan"
		else if VideoPosition >= 120.825 and VideoPosition <= 123.806 {return Localize.Subtitles.Cutscenes.Tutorial.Line34} //"en door op de rechter vensterknop te drukken om naar rechts te gaan."
		else if VideoPosition >= 124.601 and VideoPosition <= 127.517 {return Localize.Subtitles.Cutscenes.Tutorial.Line35} //"Het wapen dat in gebruik is, verschijnt in het venster rechtsonder"
		else if VideoPosition >= 127.541 and VideoPosition <= 129.218 {return Localize.Subtitles.Cutscenes.Tutorial.Line36} //"in het inventarisatiescherm."
		else if VideoPosition >= 129.977 and VideoPosition <= 133.584 {return Localize.Subtitles.Cutscenes.Tutorial.Line37} //"Als je een nuttig voorwerp selecteert uit de selectie schatten"
		else if VideoPosition >= 133.859 and VideoPosition <= 138.067 {return Localize.Subtitles.Cutscenes.Tutorial.Line38} //"verschijnt het voorwerp in hetzelfde venster waar de wapenselectie verscheen."
		else if VideoPosition >= 138.289 and VideoPosition <= 142.688 {return Localize.Subtitles.Cutscenes.Tutorial.Line39} //"Zelda kan maar één voorwerp of wapen tegelijk gebruiken."
		else if VideoPosition >= 143.514 and VideoPosition <= 147.267 {return Localize.Subtitles.Cutscenes.Tutorial.Line40} //"Tijdens Zelda's reizen zal ze veel gesloten deuren tegenkomen."
		else if VideoPosition >= 147.664 and VideoPosition <= 151.750 {return Localize.Subtitles.Cutscenes.Tutorial.Line41} //"Ze moet een sleutel in haar bezit hebben om door deze gesloten ingangen te kunnen."
		else if VideoPosition >= 152.096 and VideoPosition <= 156.029 {return Localize.Subtitles.Cutscenes.Tutorial.Line42} //"Het aantal sleutels in Zelda's bezit verschijnt in het kleine venster"
		else if VideoPosition >= 156.188 and VideoPosition <= 158.968 {return Localize.Subtitles.Cutscenes.Tutorial.Line43} //"rechtsboven in het inventarisscherm."
		else if VideoPosition >= 159.411 and VideoPosition <= 161.331 {return Localize.Subtitles.Cutscenes.Tutorial.Line44} //"Om te helpen met navigeren door Tolemac"
		else if VideoPosition >= 161.610 and VideoPosition <= 165.510 {return Localize.Subtitles.Cutscenes.Tutorial.Line45} //"is een kaart beschikbaar door je joystick naar de Kaart-knop te bewegen"
		else if VideoPosition >= 165.630 and VideoPosition <= 168.337 {return Localize.Subtitles.Cutscenes.Tutorial.Line46} //"en dan op je Actieknop 1 te drukken."
		else if VideoPosition >= 169.269 and VideoPosition <= 170.750 {return Localize.Subtitles.Cutscenes.Tutorial.Line47} //"Er zijn twee soorten kaarten:"
		else if VideoPosition >= 171.089 and VideoPosition <= 174.862 {return Localize.Subtitles.Cutscenes.Tutorial.Line48} //"Eén voor de bovenwereld en één voor elk van de onderwerelden."
		else if VideoPosition >= 175.210 and VideoPosition <= 179.330 {return Localize.Subtitles.Cutscenes.Tutorial.Line49} //"De kaart voor de bovenwereld laat zien waar je bent en waar je naartoe hebt gereisd."
		else if VideoPosition >= 180.105 and VideoPosition <= 184.666 {return Localize.Subtitles.Cutscenes.Tutorial.Line50} //"De kaarten voor elk van de onderwerelden laten zien waar je bent"
		else if VideoPosition >= 184.727 and VideoPosition <= 188.753 {return Localize.Subtitles.Cutscenes.Tutorial.Line51} //"waar je hebt gereisd en waar je heen moet om je zoektocht te voltooien."
		else if VideoPosition >= 189.522 and VideoPosition <= 193.776 {return Localize.Subtitles.Cutscenes.Tutorial.Line52} //"Druk op Actieknop 2 om terug te keren naar het spel."
		else if VideoPosition >= 194.168 and VideoPosition <= 196.215 {return Localize.Subtitles.Cutscenes.Tutorial.Line53} //"Als je klaar bent om het spel te verlaten"
		else if VideoPosition >= 196.240 and VideoPosition <= 200.449 {return Localize.Subtitles.Cutscenes.Tutorial.Line54} //"ga je met je cursor naar de knop Afsluiten en druk je op Actieknop 1."
		else if VideoPosition >= 201.489 and VideoPosition <= 205.329 {return Localize.Subtitles.Cutscenes.Tutorial.Line55} //"Je komt dan in het scherm voor opslaan, doorgaan en afsluiten."
		else if VideoPosition >= 205.730 and VideoPosition <= 207.770 {return Localize.Subtitles.Cutscenes.Tutorial.Line56} //"Om een van deze knoppen te activeren"
		else if VideoPosition >= 207.795 and VideoPosition <= 212.203 {return Localize.Subtitles.Cutscenes.Tutorial.Line57} //"moet je de cursor naar de knop verplaatsen en op Actieknop 1 drukken."
		else if VideoPosition >= 213.597 and VideoPosition <= 217.964 {return Localize.Subtitles.Cutscenes.Tutorial.Line58} //"Als je opslaat en stopt, kom je bij het speler selectiescherm"
		else if VideoPosition >= 218.015 and VideoPosition <= 221.533 {return Localize.Subtitles.Cutscenes.Tutorial.Line59} //"waar je de optie hebt om opnieuw te spelen of het spel te verlaten."
		else if VideoPosition >= 222.307 and VideoPosition <= 224.050 {return Localize.Subtitles.Cutscenes.Tutorial.Line60} //"Als je terugkomt om opnieuw te spelen"
		else if VideoPosition >= 224.237 and VideoPosition <= 227.724 {return Localize.Subtitles.Cutscenes.Tutorial.Line61} //"kun je opnieuw beginnen waar je gebleven was door je naam te selecteren."
		else if VideoPosition >= 228.658 and VideoPosition <= 231.885 {return Localize.Subtitles.Cutscenes.Tutorial.Line62} //"Je keert dan terug naar het eerste scherm van de gameplay"
		else if VideoPosition >= 231.960 and VideoPosition <= 235.506 {return Localize.Subtitles.Cutscenes.Tutorial.Line63} //"met alle items en wapens nog in de inventaris."
		else if VideoPosition >= 236.393 and VideoPosition <= 241.430 {return Localize.Subtitles.Cutscenes.Tutorial.Line64} //"Als je stopt zonder op te slaan, kom je bij het speler selectiescherm"
		else if VideoPosition >= 241.483 and VideoPosition <= 245.096 {return Localize.Subtitles.Cutscenes.Tutorial.Line65} //"waar je de optie hebt om opnieuw te spelen of het spel af te sluiten."
		else if VideoPosition >= 246.025 and VideoPosition <= 247.872 {return Localize.Subtitles.Cutscenes.Tutorial.Line66} //"Als je terugkeert naar de gameplay"
		else if VideoPosition >= 247.897 and VideoPosition <= 250.790 {return Localize.Subtitles.Cutscenes.Tutorial.Line67} //"kun je niet terugkeren naar je vorige spel."
		else if VideoPosition >= 250.848 and VideoPosition <= 255.809 {return Localize.Subtitles.Cutscenes.Tutorial.Line68} //"Je status zal echter wel gelijk zijn aan het laatste spel dat je hebt opgeslagen."
		else if VideoPosition >= 256.586 and VideoPosition <= 258.319 {return Localize.Subtitles.Cutscenes.Tutorial.Line69} //"Als je Terug naar Spel kiest"
		else if VideoPosition >= 258.383 and VideoPosition <= 262.463 {return Localize.Subtitles.Cutscenes.Tutorial.Line70} //"kom je bij het inventarisscherm waar je op Actieknop 2 drukt"
		else if VideoPosition >= 262.563 and VideoPosition <= 264.616 {return Localize.Subtitles.Cutscenes.Tutorial.Line71} //"wat je vervolgens terugbrengt naar de gameplay."
		else if VideoPosition >= 265.036 and VideoPosition <= 269.103 {return Localize.Subtitles.Cutscenes.Tutorial.Line72} //"Voor elk spel moet je een naam kiezen voor je held of heldin."
		else if VideoPosition >= 269.633 and VideoPosition <= 273.506 {return Localize.Subtitles.Cutscenes.Tutorial.Line73} //"Je kunt de Creëer-knop kiezen door de cursor op de knop te zetten"
		else if VideoPosition >= 273.682 and VideoPosition <= 276.015 {return Localize.Subtitles.Cutscenes.Tutorial.Line74} //"en op Actieknop 1 te drukken."
		else if VideoPosition >= 276.954 and VideoPosition <= 279.364 {return Localize.Subtitles.Cutscenes.Tutorial.Line75} //"Dit brengt je naar het naaminvoerscherm"
		else if VideoPosition >= 279.388 and VideoPosition <= 281.814 {return Localize.Subtitles.Cutscenes.Tutorial.Line76} //"waar je je naam intypt op het toetsenbord"
		else if VideoPosition >= 281.869 and VideoPosition <= 285.489 {return Localize.Subtitles.Cutscenes.Tutorial.Line77} //"door de gewenste letters te selecteren met Actieknop 1"
		else if VideoPosition >= 285.533 and VideoPosition <= 288.142 {return Localize.Subtitles.Cutscenes.Tutorial.Line78} //"en vervolgens je cursor op de knop Klaar te zetten"
		else if VideoPosition >= 288.196 and VideoPosition <= 290.896 {return Localize.Subtitles.Cutscenes.Tutorial.Line79} //"en nogmaals op Actieknop 1 te drukken."
		else if VideoPosition >= 292.042 and VideoPosition <= 294.875 {return Localize.Subtitles.Cutscenes.Tutorial.Line80} //"Dit brengt je terug naar het speler selectiescherm."
		else if VideoPosition >= 295.266 and VideoPosition <= 298.145 {return Localize.Subtitles.Cutscenes.Tutorial.Line81} //"Hier druk je op Speel door de Speel-knop te selecteren"
		else if VideoPosition >= 298.259 and VideoPosition <= 300.446 {return Localize.Subtitles.Cutscenes.Tutorial.Line82} //"en op Actieknop 1 te drukken."
		else if VideoPosition >= 300.964 and VideoPosition <= 303.064 {return Localize.Subtitles.Cutscenes.Tutorial.Line83} //"Je begint dan met het spel."
		else if VideoPosition >= 303.600 and VideoPosition <= 307.580 {return Localize.Subtitles.Cutscenes.Tutorial.Line84} //"Om de naam van een speler te wissen, plaats je de cursor op de Wis-knop"
		else if VideoPosition >= 307.682 and VideoPosition <= 312.295 {return Localize.Subtitles.Cutscenes.Tutorial.Line85} //"en hou je drie seconden lang de Actieknop 1 ingedrukt."
		else if VideoPosition >= 313.397 and VideoPosition <= 317.170 {return Localize.Subtitles.Cutscenes.Tutorial.Line86} //"Om het spel te verlaten, plaats je de cursor op de Stop-knop"
		else if VideoPosition >= 317.231 and VideoPosition <= 319.038 {return Localize.Subtitles.Cutscenes.Tutorial.Line87} //"en druk je op Actieknop 1."
		else if VideoPosition >= 319.329 and VideoPosition <= 322.149 {return Localize.Subtitles.Cutscenes.Tutorial.Line88} //"Dat is alles wat ik voor nu zal onthullen."
		else if VideoPosition >= 322.663 and VideoPosition <= 325.263 {return Localize.Subtitles.Cutscenes.Tutorial.Line89} //"De rest is aan jou om te ontdekken."
	}
	else
	{
		if VideoPosition >=		 02.260  and VideoPosition <= 06.580  {return Localize.Subtitles.Cutscenes.Tutorial.Line01} //"Welcome to Zelda's Adventure, an action-adventure role-playing game."
		else if VideoPosition >= 07.379  and VideoPosition <= 12.053  {return Localize.Subtitles.Cutscenes.Tutorial.Line02} //"As a player, you will adopt the personality of our heroine Princess Zelda."
		else if VideoPosition >= 12.719  and VideoPosition <= 17.673  {return Localize.Subtitles.Cutscenes.Tutorial.Line03} //"To play the game succesfully, you must explore the great land of Tolemac."
		else if VideoPosition >= 18.267  and VideoPosition <= 20.993  {return Localize.Subtitles.Cutscenes.Tutorial.Line04} //"To control Zelda's movement around Tolemac"
		else if VideoPosition >= 21.266  and VideoPosition <= 26.426  {return Localize.Subtitles.Cutscenes.Tutorial.Line05} //"move the controller left, right, up, down and diagonally."
		else if VideoPosition >= 27.307  and VideoPosition <= 29.293  {return Localize.Subtitles.Cutscenes.Tutorial.Line06} //"The court astronomer Gaspra"
		else if VideoPosition >= 29.333  and VideoPosition <= 33.413  {return Localize.Subtitles.Cutscenes.Tutorial.Line07} //"will introduce the story of Zelda and describe how her quest came about."
		else if VideoPosition >= 33.751  and VideoPosition <= 36.665  {return Localize.Subtitles.Cutscenes.Tutorial.Line08} //"He will also reappear every time"
		else if VideoPosition >= 36.746  and VideoPosition <= 40.320  {return Localize.Subtitles.Cutscenes.Tutorial.Line09} //"Zelda has succesfully completed an underworld shrine"
		else if VideoPosition >= 40.573  and VideoPosition <= 44.361  {return Localize.Subtitles.Cutscenes.Tutorial.Line10} //"and collected one of seven treasured Celestial Signs."
		else if VideoPosition >= 45.166  and VideoPosition <= 48.859  {return Localize.Subtitles.Cutscenes.Tutorial.Line11} //"Another mentor and guide to Zelda is me, Shurmak."
		else if VideoPosition >= 49.107  and VideoPosition <= 52.254  {return Localize.Subtitles.Cutscenes.Tutorial.Line12} //"Throughout the game I help orient Zelda and guide her."
		else if VideoPosition >= 53.039  and VideoPosition <= 57.426  {return Localize.Subtitles.Cutscenes.Tutorial.Line13} //"While exploring, Zelda will encounter many enemies that inhabit this land."
		else if VideoPosition >= 57.700  and VideoPosition <= 61.474  {return Localize.Subtitles.Cutscenes.Tutorial.Line14} //"She must defeat them by using skill and speed."
		else if VideoPosition >= 61.970  and VideoPosition <= 63.977  {return Localize.Subtitles.Cutscenes.Tutorial.Line15} //"Zelda attacks them with her wand."
		else if VideoPosition >= 64.396  and VideoPosition <= 68.230  {return Localize.Subtitles.Cutscenes.Tutorial.Line16} //"You employ the wand by pressing Action Button 1."
		else if VideoPosition >= 69.057  and VideoPosition <= 73.526  {return Localize.Subtitles.Cutscenes.Tutorial.Line17} //"If Zelda is succesful at defeating her enemies, she will be rewarded."
		else if VideoPosition >= 73.776  and VideoPosition <= 76.129  {return Localize.Subtitles.Cutscenes.Tutorial.Line18} //"They will randomly drop rubies and hearts"
		else if VideoPosition >= 76.154  and VideoPosition <= 79.843  {return Localize.Subtitles.Cutscenes.Tutorial.Line19} //"that will increase her currency and life units respectively."
		else if VideoPosition >= 80.639  and VideoPosition <= 83.159  {return Localize.Subtitles.Cutscenes.Tutorial.Line20} //"Rubies which are the currency of Tolemac"
		else if VideoPosition >= 83.500  and VideoPosition <= 85.288  {return Localize.Subtitles.Cutscenes.Tutorial.Line21} //"can be used to buy useful items"
		else if VideoPosition >= 85.312  and VideoPosition <= 88.867  {return Localize.Subtitles.Cutscenes.Tutorial.Line22} //"and are indicated on the top-left corner of the screen."
		else if VideoPosition >= 89.516  and VideoPosition <= 94.176  {return Localize.Subtitles.Cutscenes.Tutorial.Line23} //"Hearts are the life units that give Zelda strength to fight throughout the game."
		else if VideoPosition >= 94.602  and VideoPosition <= 98.068  {return Localize.Subtitles.Cutscenes.Tutorial.Line24} //"They are represented on the upper-right corner of the play screen."
		else if VideoPosition >= 98.688  and VideoPosition <= 104.361 {return Localize.Subtitles.Cutscenes.Tutorial.Line25} //"To select an object or a weapon on the inventory screen, press Action Button 2."
		else if VideoPosition >= 105.297 and VideoPosition <= 107.365 {return Localize.Subtitles.Cutscenes.Tutorial.Line26} //"Once in the inventory screen"
		else if VideoPosition >= 107.438 and VideoPosition <= 110.371 {return Localize.Subtitles.Cutscenes.Tutorial.Line27} //"you can access useful items and weapons"
		else if VideoPosition >= 110.416 and VideoPosition <= 114.936 {return Localize.Subtitles.Cutscenes.Tutorial.Line28} //"by selecting an object with your cursor and then pressing Action Button 1."
		else if VideoPosition >= 115.706 and VideoPosition <= 119.660 {return Localize.Subtitles.Cutscenes.Tutorial.Line29} //"Treasures and weapons can be scrolled by pressing the left window button"
		else if VideoPosition >= 119.685 and VideoPosition <= 123.766 {return Localize.Subtitles.Cutscenes.Tutorial.Line30} //"to move left, and by pressing the right window button to move right."
		else if VideoPosition >= 124.601 and VideoPosition <= 129.218 {return Localize.Subtitles.Cutscenes.Tutorial.Line31} //"The weapon in use appears in the window in the lower right of the inventory screen."
		else if VideoPosition >= 129.977 and VideoPosition <= 133.584 {return Localize.Subtitles.Cutscenes.Tutorial.Line32} //"If you select a useful item from the treasures selection"
		else if VideoPosition >= 133.859 and VideoPosition <= 138.067 {return Localize.Subtitles.Cutscenes.Tutorial.Line33} //"the item will appear in the same window where the weapon selection appeared."
		else if VideoPosition >= 138.289 and VideoPosition <= 142.688 {return Localize.Subtitles.Cutscenes.Tutorial.Line34} //"Zelda can use only one item or weapon at a time."
		else if VideoPosition >= 143.514 and VideoPosition <= 147.267 {return Localize.Subtitles.Cutscenes.Tutorial.Line35} //"In Zelda's travels she will find many locked doors."
		else if VideoPosition >= 147.664 and VideoPosition <= 151.750 {return Localize.Subtitles.Cutscenes.Tutorial.Line36} //"She must have a key in her possession to pass through these locked entrances."
		else if VideoPosition >= 152.096 and VideoPosition <= 156.029 {return Localize.Subtitles.Cutscenes.Tutorial.Line37} //"The number of keys in Zelda's possession will appear in the small window"
		else if VideoPosition >= 156.188 and VideoPosition <= 158.968 {return Localize.Subtitles.Cutscenes.Tutorial.Line38} //"in the upper right of the inventory screen."
		else if VideoPosition >= 159.411 and VideoPosition <= 161.331 {return Localize.Subtitles.Cutscenes.Tutorial.Line39} //"To help navigate through Tolemac"
		else if VideoPosition >= 161.610 and VideoPosition <= 165.510 {return Localize.Subtitles.Cutscenes.Tutorial.Line40} //"a map is available by moving your joystick to the map button"
		else if VideoPosition >= 165.630 and VideoPosition <= 168.337 {return Localize.Subtitles.Cutscenes.Tutorial.Line41} //"and then pressing your Action Button 1."
		else if VideoPosition >= 169.269 and VideoPosition <= 170.750 {return Localize.Subtitles.Cutscenes.Tutorial.Line42} //"There are two types of maps:"
		else if VideoPosition >= 171.089 and VideoPosition <= 174.862 {return Localize.Subtitles.Cutscenes.Tutorial.Line43} //"One for the overworld and one for each of the underworlds."
		else if VideoPosition >= 175.210 and VideoPosition <= 179.330 {return Localize.Subtitles.Cutscenes.Tutorial.Line44} //"The map for the overworld will reveal where you are and where you have traveled."
		else if VideoPosition >= 180.105 and VideoPosition <= 184.666 {return Localize.Subtitles.Cutscenes.Tutorial.Line45} //"The maps for each of the underworlds will reveal where you are"
		else if VideoPosition >= 184.727 and VideoPosition <= 188.753 {return Localize.Subtitles.Cutscenes.Tutorial.Line46} //"where you have traveled, and where you need to go to complete your quest."
		else if VideoPosition >= 189.522 and VideoPosition <= 193.776 {return Localize.Subtitles.Cutscenes.Tutorial.Line47} //"To return to gameplay, press Action Button 2."
		else if VideoPosition >= 194.168 and VideoPosition <= 196.215 {return Localize.Subtitles.Cutscenes.Tutorial.Line48} //"When you are ready to exit game"
		else if VideoPosition >= 196.240 and VideoPosition <= 200.449 {return Localize.Subtitles.Cutscenes.Tutorial.Line49} //"move your cursor to exit button and press Action Button 1."
		else if VideoPosition >= 201.489 and VideoPosition <= 205.329 {return Localize.Subtitles.Cutscenes.Tutorial.Line50} //"You will then arrive at the save, continue and quit screen."
		else if VideoPosition >= 205.730 and VideoPosition <= 207.770 {return Localize.Subtitles.Cutscenes.Tutorial.Line51} //"To activate any of these buttons"
		else if VideoPosition >= 207.795 and VideoPosition <= 212.203 {return Localize.Subtitles.Cutscenes.Tutorial.Line52} //"you must move the cursor to the button and press Action Button 1."
		else if VideoPosition >= 213.597 and VideoPosition <= 217.964 {return Localize.Subtitles.Cutscenes.Tutorial.Line53} //"If you save and quit, you will arrive at the player select screen"
		else if VideoPosition >= 218.015 and VideoPosition <= 221.533 {return Localize.Subtitles.Cutscenes.Tutorial.Line54} //"where you have to option to play again or exit game."
		else if VideoPosition >= 222.307 and VideoPosition <= 224.050 {return Localize.Subtitles.Cutscenes.Tutorial.Line55} //"When you come back to play again"
		else if VideoPosition >= 224.237 and VideoPosition <= 227.724 {return Localize.Subtitles.Cutscenes.Tutorial.Line56} //"you can restart where you left off by selecting your name."
		else if VideoPosition >= 228.658 and VideoPosition <= 231.885 {return Localize.Subtitles.Cutscenes.Tutorial.Line57} //"You will then return to the first screen of gameplay"
		else if VideoPosition >= 231.960 and VideoPosition <= 235.506 {return Localize.Subtitles.Cutscenes.Tutorial.Line58} //"with all items and weapons still in the inventory."
		else if VideoPosition >= 236.393 and VideoPosition <= 241.430 {return Localize.Subtitles.Cutscenes.Tutorial.Line59} //"If you quit without save, you will arrive at the player select screen"
		else if VideoPosition >= 241.483 and VideoPosition <= 245.096 {return Localize.Subtitles.Cutscenes.Tutorial.Line60} //"where you have to option to play again or exit game."
		else if VideoPosition >= 246.025 and VideoPosition <= 247.872 {return Localize.Subtitles.Cutscenes.Tutorial.Line61} //"When you return to gameplay"
		else if VideoPosition >= 247.897 and VideoPosition <= 250.790 {return Localize.Subtitles.Cutscenes.Tutorial.Line62} //"you will not be able to return to your previous game."
		else if VideoPosition >= 250.848 and VideoPosition <= 255.809 {return Localize.Subtitles.Cutscenes.Tutorial.Line63} //"However, your status will be fled the last game you saved."
		else if VideoPosition >= 256.586 and VideoPosition <= 258.319 {return Localize.Subtitles.Cutscenes.Tutorial.Line64} //"If you choose Return to Game"
		else if VideoPosition >= 258.383 and VideoPosition <= 262.463 {return Localize.Subtitles.Cutscenes.Tutorial.Line65} //"you will arrive at the inventory screen where you press Action Button 2"
		else if VideoPosition >= 262.563 and VideoPosition <= 264.616 {return Localize.Subtitles.Cutscenes.Tutorial.Line66} //"which then returns you to gameplay."
		else if VideoPosition >= 265.036 and VideoPosition <= 269.103 {return Localize.Subtitles.Cutscenes.Tutorial.Line67} //"Before each game, you must select a name for your hero or heroine."
		else if VideoPosition >= 269.633 and VideoPosition <= 273.506 {return Localize.Subtitles.Cutscenes.Tutorial.Line68} //"You can choose the create button by moving the cursor onto the button"
		else if VideoPosition >= 273.682 and VideoPosition <= 276.015 {return Localize.Subtitles.Cutscenes.Tutorial.Line69} //"and pressing Action Button 1."
		else if VideoPosition >= 276.954 and VideoPosition <= 279.364 {return Localize.Subtitles.Cutscenes.Tutorial.Line70} //"This takes you to the enter name screen"
		else if VideoPosition >= 279.388 and VideoPosition <= 281.814 {return Localize.Subtitles.Cutscenes.Tutorial.Line71} //"where you type in your name on the keyboard"
		else if VideoPosition >= 281.869 and VideoPosition <= 285.489 {return Localize.Subtitles.Cutscenes.Tutorial.Line72} //"by selecting the desired letters with Action Button 1"
		else if VideoPosition >= 285.533 and VideoPosition <= 288.142 {return Localize.Subtitles.Cutscenes.Tutorial.Line73} //"and then moving your cursor to the done button"
		else if VideoPosition >= 288.196 and VideoPosition <= 290.896 {return Localize.Subtitles.Cutscenes.Tutorial.Line74} //"and pressing Action Button 1 again."
		else if VideoPosition >= 292.042 and VideoPosition <= 294.875 {return Localize.Subtitles.Cutscenes.Tutorial.Line75} //"This takes you back to the player select screen."
		else if VideoPosition >= 295.266 and VideoPosition <= 298.145 {return Localize.Subtitles.Cutscenes.Tutorial.Line76} //"Here you press play by selecting the play button"
		else if VideoPosition >= 298.259 and VideoPosition <= 300.446 {return Localize.Subtitles.Cutscenes.Tutorial.Line77} //"and pressing Action Button 1."
		else if VideoPosition >= 300.964 and VideoPosition <= 303.064 {return Localize.Subtitles.Cutscenes.Tutorial.Line78} //"You will then begin the game."
		else if VideoPosition >= 303.600 and VideoPosition <= 307.580 {return Localize.Subtitles.Cutscenes.Tutorial.Line79} //"To delete a player's name, place the cursor on the delete button"
		else if VideoPosition >= 307.682 and VideoPosition <= 312.295 {return Localize.Subtitles.Cutscenes.Tutorial.Line80} //"and press Action Button 1 for a three second duration."
		else if VideoPosition >= 313.397 and VideoPosition <= 317.170 {return Localize.Subtitles.Cutscenes.Tutorial.Line81} //"To exit game, place the cursor on the exit button"
		else if VideoPosition >= 317.231 and VideoPosition <= 319.038 {return Localize.Subtitles.Cutscenes.Tutorial.Line82} //"and press Action Button 1."
		else if VideoPosition >= 319.329 and VideoPosition <= 322.149 {return Localize.Subtitles.Cutscenes.Tutorial.Line83} //"That is all I will reveal for now."
		else if VideoPosition >= 322.663 and VideoPosition <= 325.263 {return Localize.Subtitles.Cutscenes.Tutorial.Line84} //"The rest is up to you to discover."
	}
}
























































































