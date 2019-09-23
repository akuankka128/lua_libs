--[[-- Import Loader v1.1 --]]--

function import( imports )
    assert(type( imports ) == "table", "table expected, got "..type( imports ));
    for _,f in ipairs( imports ) do
        assert(type(f) == "string", "string expected, got "..type(f));
        dofile(f);
    end
end