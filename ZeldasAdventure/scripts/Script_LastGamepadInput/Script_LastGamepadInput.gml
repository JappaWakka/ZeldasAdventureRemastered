function gamepad_last_input(_pad_num){
    ///@desc    checks for gamepad input on the passed pad number
    ///@arg    pad_num    real    pad number to check
    
    for ( var i = gp_face1; i <= gp_padr; i++ ) {
        if ( gamepad_button_check( _pad_num, i ) ) return i;
    }
	return -1;
}