var weekBGmap = ["keroshi" => "shibuya"];
var bg:FunkinSprite;

function stateCreate()
{
	bg = new FunkinSprite("storymenu/backgrounds/shibuya", [0, 56]);
	insert(4, bg);
	changeBG();
}

function stateUpdate()
{
	if (getKey('UI_UP-P') || getKey('UI_DOWN-P'))
		changeBG();
}

function changeBG()
{
	var curWeek = State.storyWeeks[State.curWeek].name;
	bg.visible = false;
	if (weekBGmap.exists(curWeek))
	{
		bg.loadImage(weekBGmap.get(curWeek));
		bg.setGraphicSize(FlxG.width, 400);
		bg.updateHitbox();
		bg.visible = true;
	}
}
