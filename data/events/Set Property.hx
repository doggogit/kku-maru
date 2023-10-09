function eventHit(event)
{
	if (event.name == 'Set Property')
		PlayState.defaultCamZoom = Std.parseFloat(event.values[1]);
}
