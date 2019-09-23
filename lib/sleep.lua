local clock = os.clock
function sleep(t)  -- seconds
	local t0 = clock()
	while clock() - t0 <= t do
	end
end