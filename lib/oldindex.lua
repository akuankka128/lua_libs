function index(tab, startIndex)
	i = 0
	for _,v in pairs(tab) do
		if startIndex == 1 then
			i = i + 1
			tab[i] = v
		else
			tab[i] = v
			i = i + 1
		end
	end
end