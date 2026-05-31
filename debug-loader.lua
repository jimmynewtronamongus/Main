local source = [[PASTE_MAIN_SOURCE_HERE]]

if type(loadstring) ~= "function" then
    warn("loadstring is not available in this executor/environment.")
    return
end

local fn, err = loadstring(source)
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
