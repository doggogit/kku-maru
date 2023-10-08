function eventHit(event) {
    if (event.name == 'Add Camera Zoom') {
        var val1 = event.values[0] != '' ? event.values[0] : 0.015;
        var val2 = event.values[1] != '' ? event.values[1] : 0.03;

        PlayState.camGame.zoom += Std.parseFloat(val1);
        PlayState.camHUD.zoom += Std.parseFloat(val2);
    }
}