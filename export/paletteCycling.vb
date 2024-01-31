

Sub UpdateAllPaletteCyclers(ByRef cyclers As ColorPaletteCycler(4))
	' Update each of the 4 palette cyclers, if they are enabled.
	For i as Integer = 0 To 4 Step 1
		Dim current As ColorPaletteCycler
		Set current = cyclers(i)
		
		If current("enabled") Then
			UpdatePaletteCycler(current)
		End If
	Next i
End Sub

Sub UpdatePaletteCycler(ByRef cycler As ColorPaletteCycler)
	' Advance the timer.
	Set cycler("timer") = cycler("timer") - 1
	
	' Check if the timer finished.
	If cycler("timer") < 0 Then
		' Reset the timer.
		Set cycler("timer") = cycler("delayLength")
		
		' Check which direction we're going.
		If cycler("cycleDirection") = "Increasing" Then
			RotatePaletteUpwards(cycler)
		ElseIf cycler("cycleDirection") = "Decreasing" Then
			RotatePaletteDownwards(cycler)
		End If
		
		' Check if we just finished an animation loop.
		If cycler("hasLooped") Then
			' Reset the hasLooped variable.
			'
			' Note: The reason we use a "hasLooped" variable instead
			' of just checking if currentOffset = 0 is so that cyclers
			' can be loaded from the disk with hasLooped set to True.
			'
			' This is a kinda clever hack, that causes a random delay
			' to be added to the cycle animation immediately (instead
			' of waiting for a full frame of animation to complete).
			'
			' Check the JSON for situations where hasLooped is True!
			cycler("hasLooped") = False
			
			' Check whether we should add a random delay.
			If cycler("staggerMode") Then
				' Delay for an extra 0 to 127 frames.
				Dim randomWait As Integer
				Set randomWait = Math.Floor(Rnd() * 128)
				
				Set cycler("timer") = cycler("timer") + randomWait
			End If
		
		End If
		
	End If
End Sub

Sub RotatePaletteUpwards(ByRef cycler As ColorPaletteCycler)
	Dim nextPalette as Color(cycler("length"))
	Dim currentPalette as Color(cycler("length"))
	
	' I'm treating the palette as part of the cycler type in
	' this code, but in reality they're stored separately.
	' You've already figured out how the cycler's small palette
	' range fits into the larger 256-color palette array.
	Set currentPalette = cycler("palette")
	
	' Each palette color gets copied to the one above it.
	For i As Integer = 0 To (cycler("length") - 1) Step 1
		Set nextPalette(i + 1) = currentPalette(i)
	Next i
	
	' Wrap-around the previous top color to the new bottom color.
	Set nextPalette(0) = currentPalette(cycler("length") - 1)
	
	' Increment the "offset" value. This keeps track of where we
	' are in the animation.
	'
	' Note: "currentOffset" may not start at 0 when the cycler
	' is first created! This is a way to start midway through
	' an animation loop.
	'
	' Check the JSON for situations where currentOffset is not 0!
	Set cycler("currentOffset") = cycler("currentOffset") + 1
	
	' Save the new palette order.
	Set cycler("palette") = newPalette
	
	' Check if we've finished a full animation.
	If cycler("currentOffset") = cycler("length") Then
		' What we do next depends on the mode.
		If cycler("mode") = "IncreaseOnly" Then
			' Reset back to the beginning.
			Set cycler("currentOffset") = 0
			
			' Let UpdatePaletteCycler know we just finished a loop.
			Set cycler("hasLooped") = True
		ElseIf cycler("mode") = "Oscillate" Then
			' Reverse direction.
			Set cycler("currentDirection") = "Decreasing"
		End If
	End If
End Sub

Sub RotatePaletteDownwards(ByRef cycler As ColorPaletteCycler)
	''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' This section is the same as RotatePaletteUpwards, but in reverse.
	
	Dim nextPalette as Color(cycler("length"))
	Dim currentPalette as Color(cycler("length"))
	
	' I'm treating the palette as part of the cycler type in
	' this code, but in reality they're stored separately.
	' You've already figured out how the cycler's small palette
	' range fits into the larger 256-color palette array.
	Set currentPalette = cycler("palette")
	
	' Each palette color gets copied to the one below it.
	For i As Integer = 1 To cycler("length") Step 1
		Set nextPalette(i - 1) = currentPalette(i)
	Next i
	
	' Wrap-around the previous bottom color to the new top color.
	Set nextPalette(cycler("length") - 1) = currentPalette(0)
	
	' Increment the "offset" value. This keeps track of where we
	' are in the animation.
	Set cycler("currentOffset") = cycler("currentOffset") - 1
	
	' Save the new palette order.
	Set cycler("palette") = newPalette
	
	''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' This section is different.
	
	' Check if we've finished a full animation.
	If cycler("currentOffset") = 0 Then
		' Reverse Direction.
		Set cycler("cycleDirection") = "Increasing"
		
		' Let UpdatePaletteCycler know we just finished a loop.
		Set cycler("hasLooped") = True
	End If
	
End Sub