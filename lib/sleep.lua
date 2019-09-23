--[[-- Sleep lib v1.0 --]]--

local clock = os.clock -- Declares the local variable clock
function sleep(t)  -- Declares the function
	local t0 = clock() -- idk
	while clock() - t0 <= t do -- idk 2
	end -- End
end -- End

--[[ Copypasted this cuz I was too lazy to figure it out myself :p ]]--
