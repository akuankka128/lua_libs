--[[-- TableFunctions lib v1.2 --]]--
--[[ Current known bugs:
    - WONTIFX table can be overwritten
    - WONTFIX returns "table (address)"
]]--

function val(tab) -- Declares a function named val
    local temp = {}; -- Declares a local table named temp
    assert(type(tab) == "table", "table expected, got "..type(tab)); -- Checks if tab is a table, else throw an error
    for _,v in pairs(tab) do -- Loops through all values
        _G.table.insert(temp, v); -- Inserts value v to table temp
    end -- End
    return temp; -- Returns the temp table
end -- End
function key(tab) -- Declares a function named key
    local temp = {}; -- Declares a local table named temp
    assert(type(tab) == "table", "table expected, got "..type(tab)); -- Checks if tab is a table, else throw an error
    for k, _ in pairs(tab) do -- Loops through all keys
        _G.table.insert(temp, k); -- Inserts value k to table temp
    end -- End
    return temp; -- Returns the temp table
end -- End
