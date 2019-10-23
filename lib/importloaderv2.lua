--[[-- Import Loader v2 --]]--


function import( imports ) -- Declaring the function
    assert(type( imports ) == "table" or type( imports ) == "string", "table or string expected, got "..type( imports )); -- Checking if argument is a table or a string, if not, throw an error
    if type( imports ) == "table" then
	    for _,f in ipairs( imports ) do -- Loop through all table keys and values
	        assert(type(f) == "string", "string expected, got "..type(f)); -- Checking if current table item is a string, otherwise throw an error
	        dofile(f); -- Try loading the file in the argument
	    end -- Obvious
	end -- Obious 2: revisited
	if type( imports ) == "string" then
		dofile( imports ); -- I'm not gonna help you out here, you gotta figure out what this does yourself
	end -- Obvious 3: the grand final
end -- Obvious 4: reborn

_G.import = import; -- Make it global too! Because why not?

--[[
    Example usage:
    import({"./lib/sleep.lua","./lib/libconsolelog.lua"});
    ^ Imports those files, in order

    Or:

    import("./lib/sleep.lua");
]]--
