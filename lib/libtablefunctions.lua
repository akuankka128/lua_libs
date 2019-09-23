--[[-- TableFunctions lib v1.2 --]]--
--[[ Current known bugs:
    - WONTIFX table can be overwritten
    - WONTFIX returns "table (address)"
]]--

function val(tab)
    local temp = {};
    assert(type(tab) == "table", "table expected, got "..type(tab));
    for _,v in pairs(tab) do
        _G.table.insert(temp, v);
    end
    return temp;
end
function key(tab)
    local temp = {};
    assert(type(tab) == "table", "table expected, got "..type(tab));
    for k, _ in pairs(tab) do
        _G.table.insert(temp, k);
    end
    return temp;
end