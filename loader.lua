local url = "https://raw.githubusercontent.com/jimmynewtronamongus/Main/refs/heads/main/Main"

if type(loadstring) ~= "function" then
    error("loadstring is not available in this environment")
end

local ok, source = pcall(function()
    return game:HttpGet(url)
end)

if not ok then
    error("Download failed: " .. tostring(source))
end

local fn, compileErr = loadstring(source)
if not fn then
    error("Compile failed: " .. tostring(compileErr))
end

local ran, runtimeErr = pcall(fn)
if not ran then
    error("Runtime failed: " .. tostring(runtimeErr))
end
