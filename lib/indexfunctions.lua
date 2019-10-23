--[[-- Index functions revamped v1.2 --]]--

--[[ Current known bugs:
    - WONTFIX if index's output is assigned to a variable and called from console, it prints "table (address)" -- built-in functionality
]]--

function index(
	tab,
	startIndex
)
	i = 0;
	local temp = {};
	for _,v in pairs( tab ) do
		if startIndex == 1 then
			i = i + 1;
			temp[i] = v;
		else
			temp[i] = v;
			i = i + 1;
		end
	end
	return temp;
end
function firstIndex( tab )
	assert(type( tab ) == "table", "table expected, got "..type( tab ));
	if tab[1] == nil then do
		indexed = index(tab, 1);
	end end
	if not indexed[0] == nil then return 0 else return 1 end
end
function lastIndex( tab )
	assert(type( tab ) == "table", "table expected, got "..type( tab ));
	length = 0;
	for _,__ in pairs( tab ) do
		length = length + 1;
	end
	return length;
end
