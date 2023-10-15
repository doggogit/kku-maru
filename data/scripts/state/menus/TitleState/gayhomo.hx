var newLogo:FunkinSprite;

function stateCreate()
{
	var dumbBackGround = new FunkinSprite("title/graffitid");
	dumbBackGround.setGraphicSize(FlxG.width, FlxG.height);
	dumbBackGround.updateHitbox();
	State.titleGroup.insert(1, dumbBackGround);
	State.gfDance.visible = State.logoBump.visible = false;

	newLogo = new FunkinSprite("title/logoBumpin", [225, 100]);
	newLogo.addAnim('idle', 'logo bumpin', 24, false);
	State.titleGroup.insert(2, newLogo);
}

function stateBeatHit()
{
	newLogo.playAnim('idle', true);
}
