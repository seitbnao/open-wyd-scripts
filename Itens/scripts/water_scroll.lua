local waterNEvent = iGetEvent("agua-N");
local waterMEvent = iGetEvent("agua-M");
local waterAEvent = iGetEvent("agua-A");

function OnUse(player, pSrc, pNumber, pDest)
	
	local scrollItem = player:getItem(pSrc.slot, pSrc.type);
	if(scrollItem:isBetween(3173, 3181)) then
		return sendToWater(player, waterNEvent, (scrollItem:getId() - 3173) + 1);
	elseif(scrollItem:isBetween(777, 785)) then
		return sendToWater(player, waterMEvent, (scrollItem:getId() - 777) + 1);
	elseif(scrollItem:isBetween(3182, 3190)) then
		return sendToWater(player, waterAEvent, (scrollItem:getId() - 3182) + 1);
	end
	
	return FALSE;
end