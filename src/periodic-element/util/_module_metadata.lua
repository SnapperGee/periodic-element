local lfs = require("lfs")

local this_file_path = debug.getinfo(1, "S").source
local separator = package.config:sub(1, 1)

local src_directory = this_file_path:sub(1, 1) == '@' and this_file_path:sub(2) or this_file_path:sub(1)
assert(src_directory and #src_directory ~= 0, "invalid src directory path", src_directory)

local relative_project_root_path = string.format("%s..%s..", src_directory, separator)

local function get_rockspec_contents()
    for file_name in lfs.dir(relative_project_root_path) do
        if file_name:find("^.+-[%w.-]+-%d+%.rockspec$") then
            local relative_rockspec_path = string.format("%s..%s%s", src_directory, separator, file_name)
            local rockspec_file, error = io.open(relative_rockspec_path, "r")
            assert(rockspec_file, error)
            local rockspec_text = rockspec_file:read("*a")
            rockspec_file:close()
            return rockspec_text
        end
    end
end

return get_rockspec_contents()
