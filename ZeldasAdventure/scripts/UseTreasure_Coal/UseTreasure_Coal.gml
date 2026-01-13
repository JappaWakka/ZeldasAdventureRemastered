function UseTreasure_Coal()
{
	if global.CurrentTile.x = 9 && global.CurrentTile.y = 11
	{
		if IsMenuVisible() = false
		and global.CurrentDialogue_Asset = Dialog_None
		{
			Item_Remove(Treasures.Coal,0);
			if global.RemasteredMode = true
			{
				global.CurrentTreasure = -1
			}
			else
			{
				global.CurrentItem[1] = -1
			}
			
			if Register_Registered("WimbichSmithy_Coal") = false
			{
				global.CurrentDialogue_Asset = Dialog_GreatWimbich_Smithy_CongratsOnFindingCoal
				global.CurrentDialogue_ID = audio_play_sound_relative_toentity(Entity_NPC_Smithy,global.CurrentDialogue_Asset,500,false)
				Register_Add("WimbichSmithy_Coal",true)
			}
			
			instance_create_layer(3679,2775,"Items_AboveForeground",Entity_Pickup_Diamond)
		}
	}
	else
	{
		audio_play_sound_relative(SFX_Use_Error,100,false)
	}
							
}