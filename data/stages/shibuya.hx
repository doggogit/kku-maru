var sky:FunkinSprite;
var building:FunkinSprite;
var backbop:FunkinSprite;
var front:FunkinSprite;
var boppingfront:FunkinSprite;
var overlayAdd:FunkinSprite;
var overlayMultiply:FunkinSprite;

function create()
{
	sky = new FunkinSprite('stage/shibuya/sky', [-1225, -1005], [0.7, 0.7]);
	addSpr(sky);

	building = new FunkinSprite('stage/shibuya/buildigs', [-1525, -700], [0.8, 0.8]);
	addSpr(building);

	backbop = new FunkinSprite('stage/shibuya/crowd/backbop', [-460, -135], [0.9, 1.6]);
	backbop.addAnim('idle', 'backbop', 24, false);
	add(backbop);

	front = new FunkinSprite('stage/shibuya/bgfront', [-1155, -365], [1, 1]);
	add(front);

	boppingfront = new FunkinSprite('stage/shibuya/crowd/frontbop', [-360, -55], [1, 1]);
	boppingfront.addAnim('idle', 'frontbop', 24, true);
	add(boppingfront);

	overlayAdd = new FunkinSprite('stage/shibuya/fx/add', [-1280, -1800], [0, 0]);
	overlayAdd.scale.set(1.1, 1.1);
	overlayAdd.updateHitbox();
	overlayAdd.blend = getBlendMode("add");
	add(overlayAdd, true);

	overlayMultiply = new FunkinSprite('stage/shibuya/fx/multiply', [-1280, -1450], [0, 0]);
	overlayMultiply.scale.set(1.1, 1.1);
	overlayMultiply.updateHitbox();
	overlayMultiply.blend = getBlendMode("multiply");
	add(overlayMultiply, true);
}

function startCountdown()
{
	PlayState.gfGroup.scrollFactor.set(1, 1);
}

function beatHit()
{
	boppingfront.playAnim('idle', true);
	backbop.playAnim('idle', true);
}
