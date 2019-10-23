function index( -- Declares the function
	tab, -- variableName1
	startIndex -- variableName2
) -- yes
	i = 0 -- Declares a global variable named i to value 0
	for _,v in pairs(tab) do -- Loop through all key-value pairs of table tab
		if startIndex == 1 then -- Checks if startIndex is 1
			i = i + 1 -- Increments i by 1
			tab[i] = v -- Sets table's index i to value v
		else -- Else
			tab[i] = v -- Sets table's index i to value v
			i = i + 1 -- Increments i by 1
		end -- End
	end -- End
end -- End
