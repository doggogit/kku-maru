var weekBGmap = ["keroshi" => "menu_shibuya"];
var bg:FunkinSprite;

function stateCreate()
{
	bg = new FunkinSprite("storymenu/menubackground/menu_shibuya", [0, 56]);
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
	var curWeek = State.storyWeeksNames[State.curWeek];
	bg.visible = false;
	if (weekBGmap.exists(curWeek))
	{
		bg.loadImage(weekBGmap.get(curWeek));
		bg.setGraphicSize(FlxG.width, 400);
		bg.updateHitbox();
		bg.visible = true;
	}
}
