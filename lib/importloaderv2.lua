--[[-- Import Loader v2 --]]--

--- Main function
-- @param {string | table<string>} imports Table of strings or string of files to be imported.
function import( imports )
    assert(type( imports ) == "table" or type( imports ) == "string", "table or string expected, got "..type( imports )); -- Checking if argument is a table or a string, if not, throw an error
    if type( imports ) == "table" then
	    for _,f in ipairs( imports ) do -- Loop through all table keys and values
	        assert(type(f) == "string", "string expected, got "..type(f)); -- Checking if current table item is a string, otherwise throw an error
	        print("Importing file "..f.."..."); -- Relevant information
	        if pcall(function() dofile(f); end) then do -- pcall dofile(...)
	        	-- No errors
	        	-- print("Successfully imported file "..f);
	        end else do
	        	print("Errors found while importing file "..f.."."); -- Let's not provide relevant information
	    	end end
	    end
	end
	if type( imports ) == "string" then
		dofile( imports ); -- Load file
	end
end

_G.import = import; -- Make it global too! Because why not?

--[[
    Example usage:
    import({"./lib/sleep.lua","./lib/libconsolelog.lua"});
    ^ Imports those files, in order

    Or:

    import("./lib/sleep.lua");
]]--
