Bot = {}

Bot["BOT NAME"] = {
    farm = {"WORLD","WORLD","WORLD","WORLD"},
    Webhooklink = ""
    iddoor = ""
}

Bot["BOT NAME"] = {
    farm = {"WORLD","WORLD","WORLD","WORLD"},
    Webhooklink = ""
    iddoor = ""
}

Bot["BOT NAME"] = {
    farm = {"WORLD","WORLD","WORLD","WORLD"}
    Webhooklink = ""
    iddoor = ""
}
WorldStorage = ""
IdStorage = ""
minitemtostart = 5
Iddoorbaru = ""
---------------------------- PEMBATAS -------------------------------
patokanbreak = nil
patokanwhitex = nil
patokanwhitey = nil
patokandoorx = nil
patokandoory = nil
farm = Bot[getBot().name:upper()].farm
oldDoorID = Bot[getBot().name:upper()].oldDoorID
newDoorID = Bot[getBot().name:upper()].newDoorID
Webhooklink = Bot[getBot().name:upper()].Webhooklink
iddoor = Bot[getBot().name:upper()].iddoor


function Webhook(text)
    local wh = {}
    wh.url = Webhooklink
    wh.username = "Script Auto Check Farm"
    wh.content = text
    webhook(wh)
end

function re(x,y)
    wrench(x,y)
    sleep(2000)
    sendPacket(2,"action|dialog_return\ndialog_name|lock_edit\ntilex|"..(math.floor(getBot().x/32)+x).."|\ntiley|"..(math.floor(getBot().y/32)+y).."|\nbuttonClicked|recalcLock\n\ncheckbox_public|0\ncheckbox_ignore|1")
    sleep(5000)
end

function takeslordoor(farm,world,id)
	while findItem(202) == 0 or findItem(12) == 0 then
	    recon(world,id)
		sendPacket(3,"action|join_request\nname|"..world.."\ninvitedWorld|0")
        sleep(5000)
        while getTile(math.floor(getBot().x / 32),math.floor(getBot().y / 32)).fg == 6 do
            recon(world,id)
	        sendPacket(3,"action|join_request\nname|"..world.."|"..id.."\ninvitedWorld|0")
	        sleep(2000)
	    end
	    for _, obj in pairs(getObjects()) do
          if obj.id == 202 or obj.id == 12 then
            recon(world,id)
            collectSet(true, 2)
            findPath(math.floor(obj.x / 32), math.floor(obj.y / 32))
            sleep(4000)
          end
        end
        if findItem(202) > minitemtostart or findItem(12) > minitemtostart then
	        collectSet(false, 2)
	        recon(world,id)
	        break
	    end
	end
end

function recon(world,id)
  if getBot().status ~= "online" then
    if string.lower(getBot().status) == "offline" then
      Webhook("Bot offline")
    elseif string.lower(getBot().status) == "login fail" then
      Webhook("Bot login failed")
    elseif string.lower(getBot().status) == "suspended" or string.lower(getBot().status) == "banned" then
      Webhook("Bot banned")
    end
  end
  while getBot().status ~= "online" do
      connect()
    end
    sleep(30000)
    if getBot().status == "online" then
      Webhook("Bot reconnected")
      if world ~= "" then
        sendPacket(3,"action|join_request\nname|"..world.."\ninvitedWorld|0")
        sleep(5000)
        while getTile(math.floor(getBot().x / 32),math.floor(getBot().y / 32)).fg == 6 do
	        sendPacket(3,"action|join_request\nname|"..world.."|"..id.."\ninvitedWorld|0")
	        sleep(2000)
	    end
      end
      break
    end
  end
end

function gs(id)
  count = 0
  for _, object in pairs(getObjects()) do
    if object.id == id then
      count = count + object.count
    end
  end
  return count
end

function changedoor(id)
wrench(-1,1)
sleep(2500)
sendPacket(2,"action|dialog_return\ndialog_name|door_edit\ntilex|"..math.floor(getBot().x/32)-1.."|\ntiley|"..math.floor(getBot().y/32)+1.."|\ndoor_name|mm\ndoor_target|\ndoor_id|"..id.."\ncheckbox_locked|0")
sleep(2500)
end

function runsc(id,idnew)
    for i = 1,#farm do
      if findItem(202) == 0 or findItem(12) then
	      takeslordoor(farm[i],WorldStorage,IdStorage)
	      recon(WorldStorage,IdStorage)
	  end
        sendPacket(3,"action|join_request\nname|"..farm[i].."\ninvitedWorld|0")
        sleep(5000)
        patokanwhitex = getBot().x
        patokanwhitey = getBot().y
        while getTile(math.floor(getBot().x / 32),math.floor(getBot().y / 32)).fg == 6 do
                recon(farm[i],id)
                sendPacket(3,"action|join_request\nname|"..farm[i].."|"..id.."\ninvitedWorld|0")
                sleep(2000)
        end
        recon(farm[i],id)
        patokandoorx = getBot().x
        patokandoory = getBot().y
        if (patokanwhitex + 1 ..patokanwhitey + 1) == (patokandoorx..patokandoory) then
	        patokanbreak = "kanan"
	    elseif (patokanwhitex - 1 ..patokanwhitey + 1) == (patokandoorx..patokandoory) then
		    patokanbreak = "kiri"
		end
		if patokanbreak == "kanan" then
		    collecSet(true, 3)
		    punch(0,1)
	        sleep(150)
            punch(-1,1)
            sleep(150)
            punch(-2,1)
            sleep(150)
            punch(1,1)
            sleep(150)
            for u = 1,4 do
              punch(0,2)
              sleep(150)
            end
            for p = 1,4 do
              punch(-1,2)
              sleep(150)
            end
			place(202,0,1)
			sleep(1000)
			place(12,-1,1)
			sleep(1000)
			re(0,1)
			sleep(5000)
			changedoor(idnew)
			sleep(4000)
			place(2,0,2)
			sleep(150
			place(2,-1,2)
			sleep(150)
		elseif patokanbreak == "kiri" then
            collecSet(true, 3)
		    punch(0,1)
	        sleep(150)
            punch(-1,1)
            sleep(150)
            punch(-2,1)
            sleep(150)
            for k = 1,4 do
              punch(0,2)
              sleep(150)
            end
            for t = 1,4 do
              punch(-1,2)
              sleep(150)
            end
            for g = 1,4 do
               punch(-1,0)
               sleep(150)
            end
			place(202,0,1)
			sleep(1000)
			place(12,-1,1)
			sleep(1000)
			re(0,1)
			sleep(5000)
			changedoor(idnew)
			sleep(4000)
			place(2,-1,0)
			sleep(150)
			place(2,0,2)
			sleep(150
			place(2,-1,2)
			sleep(150)
		end
        Webhook("**||"..getBot().world.."||** "..gs(12).." Door, Done)
    end
    removeBot(getBot().name)
end

runsc(iddoor,Iddoorbaru)