
--================== Script CID V2.2 BY PCS ==========================
--======================== Setting Bot ===============================
botname  = "GrowID" -- GrowID Bot
botpass  = "PassWord" -- Password Bot
botstart = 1 -- Bot Start Example = aw1@gmail.com
botend   = 1 -- Bot End Example = aw1@gmail.com
multipleaccount = "false" -- TYPE "true" if you want create multiple account and type "false" if you want to singlecid
AutoAAPs = "false" -- U can true/false if false u use email and domain
--======================== Setting RandomName ================================
randomname = "true" -- type true if you want randomname.type false if you not want randomname. if true multipleaccount = false. if false multipleaccount = true.
nameletter = 8 -- How Many Letter Ur GrowBot
Number     = false -- Gak Usah Gua Jelasin Udah Tahu
HowManyCrate = 1 -- How Many Crate Bot 1 Click Execute 1-5 Bot For 1  IP
AutoAAPr = "true" -- U can true/false if false u use email and domain
--======================== Setting Email =============================
email = "aw" -- Tulis Example = aw50234@gmail.com ,if RandomName is True , You Can Write As Long As You Want
Domain_email = "@gmail.com" -- Domain Email if RandomName is True , You Can Leave It Blank
Delay = 9 -- Delay Next Bot (Seconds not Milliseconds, recommended 10 seconds)
--======================= Setting Trash ================================
TrashItem   = "true"  -- If Can False/True
Trash_List  = {48,2,3} -- Item Id For Trash
Delay_Trash = 500 -- Delay Trash Item Recommended 100-500
--======================= Setting SkipTutor ============================
skiptutor    = "true"
pickaxe      = "true"
PickaxeWorld = "World"
DoorID       = "DoorID"
--====================== Setting Webhook ==============================
DiscordID = "DiscordID"  --Discord Id
Weebhook = "Weebhook" -- webhook
license = "License" -- License
--=====================================================================

Lopay = 1
Pom = {"A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"}
Pom2 = {"1","2","3","4","5","6","7","8","9","0","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"}

function powershell(loglars)
  local script = [[
    $webHookUrl = ']].. Weebhook ..[['
    [System.Collections.ArrayList]$embedArray = @()

    $Body = @{
      'content' = '<@]].. DiscordID ..[[>'
    }
    $title       = 'SC CID BY PCS'
    $description = ']].. loglars .."\n======================\n<a:arrowkuning:963829544870109204> **Version** : **2.3**\n<a:arrowkuning:963829544870109204> **Roles** : **Buyer CID V2.0**\n======================\n[**Discord**](https://discord.gg/a5AZhn4m) | [**Tutorial**](https://discord.gg/a5AZhn4m)\n======================\n**"..(os.date"!%A %d %B, %Y").."\n"..(os.date("%H:%M WIB", os.time() + 7 * 60 * 60))..[['
    $color       = '1242520'
    $footer = [PSCustomObject]@{
      text = 'CID V2.3 Asakin , By POTATO CLOUD STORE'
    }
    $thumbUrl = 'https://cdn.discordapp.com/attachments/1005000007541342239/1033871164096905226/standard_14.gif'
    $imageUrl = 'https://cdn.discordapp.com/attachments/1005000007541342239/1033871164528939168/standard_13.gif'
    $imageObject = [PSCustomObject]@{
      url = $imageUrl
    }
    $thumbnailObject = [PSCustomObject]@{
      url = $thumbUrl
    }
    $embedObject = [PSCustomObject]@{

      title       = $title
      description = "$description**"
      color       = $color
      thumbnail   = $thumbnailObject
      image       = $imageObject
      footer      = $footer
  
    }
    $embedArray.Add($embedObject) | Out-Null
    $payload = [PSCustomObject]@{

      'avatar_url' = 'https://cdn.discordapp.com/attachments/1005000007541342239/1033871163635552397/static_1.png'
      'username' = 'Mr.PCS'
      'content' = '<a:Ringing_Bell:986630941944447056>Notif Sir!! !<@]].. DiscordID ..[[>'
      embeds = $embedArray
  
    }
    [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
    Invoke-RestMethod -Uri $webHookUrl -Body ($payload | ConvertTo-Json -Depth 4) -Method Post -ContentType 'application/json'
  ]]
    
  local pipe = io.popen("powershell -command -", "w")
  pipe:write(script)
  pipe:close()
end

function drops()
   count = findItem(98)
   sendPacket(2,"action|drop\n|itemID|98")
   sleep(1000)
   sendPacket(2,"action|dialog_return\ndialog_name|drop_item\nitemID|98|\ncount|"..count - 1)
   sleep(1300)
   powershell("======================\n<:mega:981220331572326471> Status : **"..getBot().status.."** <a:online:982769198969282610>\n<:bot:982769375960498276> **Name** : **||Cannot Detected||**\n<:pickaxe:1037281055754944562> Rest Of The Pickaxe = **("..gscan(98)..")**\n<a:CrownKing:966921505038549042> Information : **Taking Pickaxe! ...**")
   sleep(1300)
   powershell("======================\n<:mega:981220331572326471> Status : **"..getBot().status.."** <a:online:982769198969282610>\n<:bot:982769375960498276> **Name** : **||Cannot Detected||**\n<:pickaxe:1037281055754944562> Rest Of The Pickaxe = **("..gscan(98)..")**\n<a:CrownKing:966921505038549042> Information : **Done Wear Pickaxe! ...**")
   sleep(1500)
   sendPacket(3,"action|quit_to_exit")
  end

function WearPickaxe()
  if pickaxe == "true" then
    sendPacket(3,"action|join_request\nname|"..PickaxeWorld.."\ninvitedWorld|0")
    sleep(5000)
    sendPacket(3,"action|join_request\nname|"..PickaxeWorld.."|"..DoorID.."\ninvitedWorld|0")
    sleep(3000)
    collect(2)
    sleep(1200)
    wear(98)
    sleep(1600)
    drops()
  end
end

function log(...)
  local arg = {...}
  if #arg <= 0 then return end
  local file = io.open("List_Bot.txt", "a+")
  local text = arg[1]
  for i = 2, #arg do
      text = text .. " " .. tostring(arg[i])
  end
  file:write(text.."\n")
  file:close()
end

function BD()
  for i=0,4,1 do
    punch(1,0)
    sleep(300)
  end
end

function TrashPol()
  if TrashItem == "true" then
    TrashTheJunks()
    sleep(2000)
  end
end

function TrashTheJunks()
  if Trash_List[1] == nil then
    goto pass
end
for i, trash in ipairs(Trash_List) do
         if findItem(trash) then
            sendPacket(2, "action|trash\n|itemID|" .. trash)
            sleep(Delay_Trash)
            sendPacket(2, "action|dialog_return\ndialog_name|trash_item\nitemID|" .. trash .. "|\ncount|10")
            sleep(Delay_Trash)
        end
        if findItem(trash) then
            sendPacket(2, "action|trash\n|itemID|" .. trash)
            sleep(Delay_Trash)
            sendPacket(2, "action|dialog_return\ndialog_name|trash_item\nitemID|" .. trash .. "|\ncount|" .. findItem(trash))
            sleep(Delay_Trash)
        end
    end
    ::pass::
end

function gscan(id)
    count = 0
    for _, obj in pairs(getObjects()) do
        if obj.id == id then
            count = count + obj.count
        end
    end
    return count
end

function text()
  for i = 10,1,-1 do
    totTxt = totTxt..string.char(math.random(97,122))
  end
end

function Tutor()
  if skiptutor == "true" then
   while getBot().status ~= "online" do
     sleep(1000)
   end
   sleep(15000)
   sendPacket(2,"ftue_start_popup_close")
   powershell("======================\n<:mega:981220331572326471> Status : **"..getBot().status.."** <a:online:982769198969282610>\n<:bot:982769375960498276> **Name** : **||Cannot Detected||**\n<a:CrownKing:966921505038549042> Info : **Starting Tutorial! ...**")
   sleep(1500)
   findPath(86,30)
   sleep(1800)
   enter()
   sleep(5000)
   findPath(46,23)
   sleep(2000)
   BD()
   place(2,1,0)
   sleep(600)
   BD()
   collect(3)
   sleep(1240)
   place(3,1,0)
   sleep(2000)
   place(10672,1,0)
   sleep(1300)
   punch(1,0)
   sleep(1200)
   move(1,0)
   collect(2)
   sleep(2000)
   wear(48)
   sleep(3000)
   sendPacket(3,"action|quit_to_exit")
   sleep(2000)
   totTxt = ""
   text()
   sendPacket(3, "action|join_request\nname|TAMA" .. totTxt.."\ninvitedWorld|0")
   sleep(5000)
   place(9640,0,-1)
   sleep(1200)
   TrashPol()
   sleep(1000)
   powershell("n======================\n<:mega:981220331572326471> Status : **"..getBot().status.."** <a:online:982769198969282610>\n<:bot:982769375960498276> **Name** : **||Cannot Detected||**\n<a:CrownKing:966921505038549042> Info : **Done Tutorial! ...**")
  end
end

function regiss()
  if randomname == "false" then
    if multipleaccount == "true" then
      if AutoAAPs == "false" then
          sleep(2000)
          sendPacket(2, "action|growid")
          sleep(200)
          sendPacket(2, "action|dialog_return\ndialog_name|growid_apply\nlogon|"..botname..""..botstart.."\npassword|"..botpass.."\npassword_verify|"..botpass.."\nemail|"..email..""..botstart..""..Domain_email)
          sleep(1800)
          log("BOT GROWID = ".. botname..botstart.."-"..botend.." PASSWORD = ".. botpass.." EMAIL = ".. email..botstart.."-".. botend..""..Domain_email) 
          sleep(1800)
          powershell("======================\n<:mega:981220331572326471> Information = **Done Crate Bot** <a:blackverif:993943859690213397> \n<:bot:982769375960498276> **Name** : **||" .. botname..""..botstart.."||**\n<a:arrowkuning:963829544870109204> **Email** : **||"..email..""..n..""..Domain_email.."||** \n<:bot:982769375960498276> **Password** : **||"..botpass.."||**")
          sleep(2000)
          botstart = botstart + 1
        end
    end
  end
end

function muniko()
  if randomname == "true" then
    if multipleaccount == "false" then
      if AutoAAPr == "false" then
          local totTx = ""
          for i = 1,nameletter do
            if Number == false then
              az = math.random(1,26)
              totTx = totTx..Pom[az]
              elseif Number ==  true then
                az = math.random(1,36)
                totTx = totTx..Pom2[az]
                end
              end
              sendPacket(2, "action|growid")
              sleep(200)
              sendPacket(2, "action|dialog_return\ndialog_name|growid_apply\nlogon|"..totTx.."\npassword|"..botpass.."\npassword_verify|"..botpass.."\nemail|"..email..""..botstart..""..Domain_email)
              sleep(1800)
              removeBot("")
              sleep(1000)
              addBot(totTx,botpass)
              sleep(3000)
              removeBot(totTx)
              sleep(1000)
              log("BOT GROWID = ".. totTx.." PASSWORD = ".. botpass.."  EMAIL = ".. email..botstart.."-".. botend..""..Domain_email)
              sleep(1000)
              powershell("======================\n<:mega:981220331572326471> Information = **Done Crate Bot** <a:blackverif:993943859690213397> \n<:bot:982769375960498276> **Name** : **||" .. totTx.."||**\n<a:arrowkuning:963829544870109204> **Email** : **||"..email..""..botstart..""..Domain_email.."||** \n<:bot:982769375960498276> **Password** : **||"..botpass.."||**")
              sleep(2000)
              botstart = botstart + 1
          end
      end
    end
  end

function mokina()
  if randomname == "false" then
    if multipleaccount == "true" then
      if AutoAAPs == "true" then
          local totTx = ""
          for i = 1,nameletter do
            if Number == false then
              az = math.random(1,26)
              totTx = totTx..Pom[az]
              elseif Number ==  true then
                az = math.random(1,36)
                totTx = totTx..Pom2[az]
              end
            end
            nameregis = (botname..botstart)
            sleep(2000)
            sendPacket(2,"action|growid")
            sleep(200)
            sendPacket(2,"action|dialog_return\ndialog_name|growid_apply\nlogon|"..nameregis.."\npassword|"..botpass.."\npassword_verify|"..botpass.."\nemail|"..totTx.."@Koolf.fun")
            sleep(1800)
            log("BOT GROWID = ".. botregis.." PASSWORD = ".. botpass) 
            sleep(1800)
            powershell("======================\n<:mega:981220331572326471> Information = **Done Crate Bot** <a:blackverif:993943859690213397> \n<:bot:982769375960498276> **Name** : **||" .. botname..""..botstart.."||**\n<:bot:982769375960498276> **Password** : **||"..botpass.."||**")
            sleep(2000)
            botstart = botstart + 1
          end
      end
    end
  end

function jukoma()
  if randomname == "true" then
    if multipleaccount == "false" then
      if AutoAAPr == "true" then
        local totTx = ""
        for i = 1,nameletter do
          if Number == false then
            az = math.random(1,26)
            totTx = totTx..Pom[az]
            elseif Number ==  true then
              az = math.random(1,36)
              totTx = totTx..Pom2[az]
            end
          end
          sendPacket(2, "action|growid")
          sleep(200)
          sendPacket(2, "action|dialog_return\ndialog_name|growid_apply\nlogon|"..totTx.."\npassword|"..botpass.."\npassword_verify|"..botpass.."\nemail|"..totTx.."@Koolf.fun")
          sleep(1800)
          removeBot("")
          sleep(1000)
          addBot(totTx,botpass)
          sleep(3000)
          removeBot(totTx)
          sleep(1000)
          log("BOT GROWID = ".. totTx.." PASSWORD = ".. botpass)
          sleep(1000)
          powershell("======================\n<:mega:981220331572326471> Information = **Done Crate Bot** <a:blackverif:993943859690213397> \n<:bot:982769375960498276> **Name** : **||" .. totTx.."||**\n<:bot:982769375960498276> **Password** : **||"..botpass.."||**")
        end
      end
    end
  end

function botstarts()
  if multipleaccount == "true" then
    if AutoAAPs == "true" then
      for e = botstart,botend do
        addBot("","")
        sleep(100)
        while getBot().status == "login fail" do
          connect()
          sleep(6000)
        end
        Tutor()
        sleep(8000)
        WearPickaxe()
        sleep(3000)
        mokina()
        sleep(4000)
        removeBot("")
        sleep(1000)
        addBot(botname..e,botpass)
        sleep(3000)
        removeBot(botname..e)
        sleep(1000)
        botstart = botstart + 1
        sleep(Delay * 1000)
      end
    end
  end
  if multipleaccount == "true" then
    if AutoAAPs == "false" then
      for k = botstart,botend do
        addBot("","")
        sleep(100)
        while getBot().status == "login fail" do
          connect()
          sleep(6000)
        end
        Tutor()
        sleep(8000)
        WearPickaxe()
        sleep(3000)
        regiss()
        sleep(4000)
        removeBot("")
        sleep(1000)
        addBot(botname..k,botpass)
        sleep(3000)
        removeBot(botname..k)
        sleep(1000)
        botstart = botstart + 1
        sleep(Delay * 1000)
      end
    end
  end
  if multipleaccount == "false" then
    if AutoAAPr == "true" then
      for m = Lopay,HowManyCrate do
        addBot("","")
        sleep(100)
        while getBot().status == "login fail" do
          connect()
          sleep(6000)
        end
        Tutor()
        sleep(8000)
        WearPickaxe()
        sleep(3000)
        jukoma()
        sleep(4000)
        removeBot("")
        Lopay = Lopay + 1
        sleep(Delay * 1000)
      end
    end
  end
  if multipleaccount == "false" then
    if AutoAAPr == "false" then
      for n = Lopay,HowManyCrate do
        addBot("","")
        sleep(100)
        while getBot().status == "login fail" do
          connect()
          sleep(6000)
        end
        Tutor()
        sleep(8000)
        WearPickaxe()
        sleep(3000)
        muniko()
        sleep(4000)
        removeBot("")
        Lopay = Lopay + 1
        sleep(Delay * 1000)
      end
    end
  end
end

res = "http://de2.dishost.cloud:5039/api/growtopia/license/$Lic"

function checkLicense()
    local script = [[
        $Lic = "]]..license..[["
        $HWID = (Get-ItemProperty registry::HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Cryptography\ -Name MachineGuid).MachineGUID
        $Valid = "C:\Users\" + $env:UserName + "\AppData\Local\true.txt"
        $InValid = "C:\Users\" + $env:UserName + "\AppData\Local\false.txt"
        $url = "]]..res..[["
        $body = @{
            hwid = $HWID
        }
        If (Test-Path $Valid) {
            Remove-Item $Valid
        }
        If (Test-Path $InValid) {
            Remove-Item $InValid
        }
        try {
            [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
            $check = Invoke-RestMethod -Uri $url -Body ($body | ConvertTo-Json -Depth 4) -Method Post -ContentType 'application/json'
            if ($check -match "$HWID") {
                New-Item $Valid -type file
                Add-Content -Path $Valid -Value "$check"
            }else{
                New-Item $InValid -type file
                Add-Content -Path $InValid -Value "$check"
            }
        } catch {
            New-Item $InValid -type file
            Add-Content -Path $InValid -Value "$HWID"
            return
        }
    ]]
    local pipe = io.popen("powershell -NoLogo -WindowStyle Hidden -ExecutionPolicy Bypass -command -", "w")
    pipe:write(script)
    pipe:close()
end

    function file(name)
      local f = io.open(name, "r")
        if f ~= nil then
          io.close(f)
          return true
      else
          return false
      end
    end

function cekll()
  local username = os.getenv('USERNAME');
  if file("C:\\Users\\" .. username .. "\\AppData\\Local\\true.txt") then
      os.remove("C:\\Users\\" .. username .. "\\AppData\\Local\\true.txt")
      powershell("=======================\n<:mega:981220331572326471> Status : **License Valid !** <a:Gif_Centang:975724394515140639>\n=======================\n<a:warning:981900218763210753> Note : **Eror? Dm AKMAL CUY#5728**")
      botstarts()
  elseif file("C:\\Users\\" .. username .. "\\AppData\\Local\\false.txt") then
      os.remove("C:\\Users\\" .. username .. "\\AppData\\Local\\false.txt")
      powershell("=======================\n<:mega:981220331572326471> Status : **License Denied !** <:salahnap:962638291612598283>\n=======================\n<a:warning:981900218763210753> Note : **Eror? Dm AKMAL CUY#5728**")
  end
end

checkLicense()
cekll()