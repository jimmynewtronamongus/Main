local url = "https://raw.githubusercontent.com/jimmynewtronamongus/Main/refs/heads/main/Main"

if type(loadstring) ~= "function" then
    warn("loadstring is not available in this executor/environment.")
    return
end

local ok, sourceOrErr = pcall(function()
    return game:HttpGet(url)
end)

if not ok then
    warn("Download error:")
    warn(sourceOrErr)
    return
end

local fn, err = loadstring(sourceOrErr)
if not fn then
    warn("Compile error:")
    warn(err)
    return
end

local ok, runtimeErr = pcall(fn)
if not ok then
    warn("Runtime error:")
    warn(runtimeErr)
end
