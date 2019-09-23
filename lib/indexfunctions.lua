--[[-- Index functions revamped v1.1 --]]--

function index(tab, startIndex) -- Declaring the function
	assert(type(tab) == "table", "table expected, got "..type(tab)); end -- Checking if tab is a table, else throw an error
	i = 0; -- Declaring the variable i
	local temp = {}; -- Declaring the local table temp
	for _,v in pairs(tab) do -- Loop through all table items
		if startIndex == 1 then -- Checks if startIndex is 1
			i = i + 1; -- Increments i by 1
			temp[i] = v; -- Assigns value v to temp's index i
		else -- Else
			temp[i] = v; -- Assigns value v to temp's index i
			i = i + 1; -- Increments i by 1
		end -- End
	end -- End 2: semi-finale
	return temp; -- Returns the temp table
end -- End 2: the grand finale
function firstIndex(tab) -- Declaring the function 2: revisited
	assert(type(tab) == "table", "table expected, got "..type(tab)); -- Checking if tab is a table, else throw an error x2
	if tab[1] == nil then do -- Checking if tab's index 1 is nil
		indexed = index(tab, 1); -- If yes, assign the indexed table to indexed
	end end -- Ends the end
	if not indexed[0] == nil then return 0 else return 1 end -- If not 0 then return 1 - simple
end -- End
function lastIndex(tab)
	assert(type(tab) == "table", "table expected, got "..type(tab)); -- Checking if tab is a table, else throw an error x3
	local length = 0; -- Assings the local variable length to 0
	for _,__ in pairs(tab) do -- Loops through every key-value pair of tab
		length = length + 1; -- Increments length by 1
	end -- End
	return length; -- Returns length
end -- The actual end of the script
