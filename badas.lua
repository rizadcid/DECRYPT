function Log()
  file = io.open("genji.lua", "rb")
  content = file:read("*all")
  file:close()
  return content
end

function bt(text)
 fole = io.open("genjia.lua", "a")
 fole:write(text.."\n")
 fole:close()
end
bt(load(Log())())
