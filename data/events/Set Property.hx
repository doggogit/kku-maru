function eventHit(event)
{
	if (event.name == 'Set Property')
		State.defaultCamZoom = Std.parseFloat(event.values[1]);
}
