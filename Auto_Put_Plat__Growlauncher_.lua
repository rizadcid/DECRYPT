--// Leak By Yasugami 

farmType = "PF" -- DF/PF
worldType = "ISLAND" -- ISLAND/NORMAL
platID = 102 -- If Plat From Mag platID = 5640
delay = 110
delayFP = 85
delayPlace = 50
blockDialog = true -- block Dialog, don't start script before take remote


    itemID = 2
  function findItem(id)
    for _, inv in pairs(GetInventory()) do
      if inv.id == id then
        return inv.amount
      end
    end
    return 0
  end
  function place(id, x, y)
    pkt = {
      type = 3,
      value = id,
      px = math.floor(GetLocal().posX / 32) + x,
      py = math.floor(GetLocal().posY / 32) + y,
      x = GetLocal().posX,
      y = GetLocal().posY
    }
    SendPacketRaw(false, pkt)
  end
  function getTiles()
    t = {}
    for y = 192, 0, -4 do
      for x = 0, 199 do
        data = {x = x, y = y}
        table.insert(t, data)
      end
      y = y - 2
      for x = 199, 0, -1 do
        data = {x = x, y = y}
        table.insert(t, data)
      end
    end
    return t
  end
  function getTilesN()
    t = {}
    for y = 52, 0, -4 do
      for x = 0, 99 do
        data = {x = x, y = y}
        table.insert(t, data)
      end
      y = y - 2
      for x = 99, 0, -1 do
        data = {x = x, y = y}
        table.insert(t, data)
      end
    end
    return t
  end
  function findPath(x, y)
    posX = math.floor(GetLocal().posX / 32)
    posY = math.floor(GetLocal().posY / 32)
    distX = x - posX
    distY = y - posY
    if distY > 6 then
      for i = 0, math.floor(distY / 2) do
        posY = posY + 2
        Sleep(delay)
        FindPath(posX, posY)
      end
    elseif distY < -6 then
      for i = 1, math.floor(distY / -2) do
        posY = posY - 2
        Sleep(delay)
        FindPath(posX, posY)
      end
    end
    if distX > 2 and distX <= 28 then
      for i = 1, distX do
        posX = posX + 1
        Sleep(delay)
        FindPath(posX, posY)
      end
    elseif distX > 6 then
      for i = 1, math.floor(distX / 3) do
        posX = posX + 3
        Sleep(delay)
        FindPath(posX, posY)
      end
    elseif distX < -6 then
      for i = 1, math.floor(distX / -3) do
        posX = posX - 3
        Sleep(delay)
        FindPath(posX, posY)
      end
    end
    FindPath(x, y)
    Sleep(delayFP)
  end
  function find(id)
    LogToConsole("Item Abis, Lagi Ngefind")
    SendPacket(2, [[
action|dialog_return
dialog_name|item_search
]] .. id .. "|1")
    Sleep(2000)
  end
  function makeFarm()
    if worldType:upper() == "NORMAL" then
      for _, t in pairs(getTilesN()) do
        if findItem(itemID) > 0 and GetTile(t.x, t.y).fg ~= itemID and 0 == GetTile(t.x, t.y).flag then
          while true do
            findPath(t.x, t.y - 1)
            place(itemID, 0, 1)
            Sleep(50)
            if 0 ~= findItem(itemID) then
              break
            end
            find(itemID)
          end
        end
      end
    elseif worldType:upper() == "ISLAND" then
      for _, t in pairs(getTiles()) do
        if findItem(itemID) > 0 and GetTile(t.x, t.y).fg ~= itemID and 0 == GetTile(t.x, t.y).flag then
          while true do
            findPath(t.x, t.y - 1)
            place(itemID, 0, 1)
            Sleep(50)
            if 0 ~= findItem(itemID) then
              break
            end
            find(itemID)
          end
        end
      end
    end
  end
  if farmType:upper() == "DF" then
    itemID = 2
  elseif farmType:upper() == "PF" then
    itemID = platID
  end
  nama = GetLocal().name
  Open = "add_label_with_icon|big|`4Halo `0" .. nama .. [[
|left|7188|
add_spacer|small|
add_smalltext|`2Script By `4MZAJ#2068|
add_spacer|small|
add_smalltext|`2Don't Resell Script|
add_smalltext|`2Mau Update? Join Server GT Community|
add_url_button|discord|GT Community|noflags|https://discord.gg/3se33M8tsH|would you like to join my discord?|0|0|
add_spacer|small|
end_dialog|confirm|Confirm|
add_quick_exit|
]]
  if blockDialog then
    AddHook(function(v)
      if v.v1 == "OnDialogRequest" and v.v2:find("item_finder") then
        return true
      end
      return false
    end, "OnVariant")
  end
  var = {
    v0 = "OnDialogRequest",
    v1 = Open
  }
  SendVariant(var)
  LogToConsole("Sek, 5 Detik")
  Sleep(5000)
  LogToConsole("Script By `#MZAJ#2068")
  LogToConsole("`#Grow Script Community")
  EditToggle("ModFly", true)
  makeFarm()
  EditToggle("ModFly", false)