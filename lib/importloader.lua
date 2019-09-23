--[[-- Import Loader v1.1 --]]--

function import( imports ) -- Declaring the function
    assert(type( imports ) == "table", "table expected, got "..type( imports )); -- Checking if argument is a table, if not, throw an error
    for _,f in ipairs( imports ) do -- Loop through all table keys and values
        assert(type(f) == "string", "string expected, got "..type(f)); -- Checking if current table item is a string, otherwise throw an error
        dofile(f); -- Try loading the file in the argument
    end -- Obvious
end -- Obvious 2: revisited

--[[
    Example usage:
    import({"./lib/sleep.lua","./lib/libconsolelog.lua"});
    ^ Imports those files, in order
]]
