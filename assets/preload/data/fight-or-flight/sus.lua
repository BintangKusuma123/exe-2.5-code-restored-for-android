local bfx = 200;
local bfy = 0;
local zoomshit = 0;
local dZoom = 1;
local bZoom = 0.85;

function onCreate()
	-- insert your balls here lmao
end

function onMoveCamera(focus)
	if focus == 'dad' then
		setProperty('defaultCamZoom', dZoom)
	elseif focus == 'boyfriend' then
		setProperty('defaultCamZoom', bZoom)
	end
end

function onUpdate()
	-- Fake 3D,they say XD
	local cGZ = getProperty('camGame.zoom');
	zoomshit = (cGZ / 0.75);
	setCharacterX('boyfriend', bfx * zoomshit)
	setCharacterY('boyfriend',bfy * zoomshit)
	setProperty('boyfriend.scale.x', zoomshit)
	setProperty('boyfriend.scale.y', zoomshit)
end
-- clean luascript