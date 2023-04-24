LuaT� 

xV(w@�@C:\Users\Administrator\Desktop\onoff\obfuscator\DISCORD/obfuscated/.lua�����D	�D	�
D
	�D	�D	� D 	�D	�D	�D	�D	�D	�D	�D	�D	�D���K��J���DK�	�����LM6�DK�	�����LM6�DK�	�����LM6�?��@AD�?��B?DC�?��	D�"DF��χD�
�G�dcbotnamedc�AUTO GEIGER v1.23�thumbnaildc�https://media.discordapp.net/attachments/1012914434626297941/1049288647695933500/32.png�colorEmbed�4672231�powershell�pshell�ScanFloat�cekActiveSlot�cekBP�Joinworld_id�cekOnline�captcha�dropGeiger�dropDeadGeiger�dropLuminous�dropUsefull�dropUseless�dropGeigerday�findSignal�bp_active�cekActiveSlot�main�say�Sorry you're not Owner script SILLY !�pshell�webhookdc�dcbotnamedc�thumbnaildc�colorEmbed�getBot�name�cekActiveSlot�slots�world�status�OWNER SCRIPT NOT IN SAME WORLD WITH BOT, RE EXE THE SCRIPT AND MAKE SURE OWNER SCRIPT WITH BOT�sleep�loop_bot�removeBot�������������D������	���� $webhookUri = "�webhookdc�" 
$Body = @{
'username' = 'AUTO GEIGER v1.23'

'content' = '�'
'avatar_url' = 'https://media.discordapp.net/attachments/1012914434626297941/1049288647695933500/32.png'
}
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Invoke-RestMethod -Uri $webhookUri -Method 'post' -Body $Body
�io�popen�powershell -command -�w�write�close�������loglars���script���pipe����_ENV���
%�����	��	�	��
����� ���� ��5���	�
�����
�������� $webHookUrl = '�'

$host.ui.RawUI.WindowTitle = ""
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12


[System.Collections.ArrayList]$embedArray = @()

$title = '�'

$description = '�'

$color = '�'

$user = '�'

$cpu = (Get-WmiObject win32_processor | Measure-Object -property LoadPercentage -Average | Select Average).Average

$ram = (Get-Counter '\Memory\Available MBytes').CounterSamples.CookedValue

$date = [System.TimeZoneInfo]::ConvertTimeBySystemTimeZoneId( (Get-Date), 'Singapore Standard Time')

$ip = Get-NetIPAddress -AddressFamily IPv4 -InterfaceIndex $(Get-NetConnectionProfile | Select-Object -ExpandProperty InterfaceIndex) | Select-Object -ExpandProperty IPAddress

$discordid = '�YourDiscordid�'

$botName = '�'

$activeSlot = '�'

$totalSlot = '�'

$botWorld = '�'

$statusBot = '�'

$ownerSC = '�ownerzitus�'

$thumbUrl = '	�' 
$thumbnailObject = [PSCustomObject]@{

url = $thumbUrl

}

$embedObject = [PSCustomObject]@{
username = $user
title = $title
description = "
Discord : `n Owner Script : $ownerSC 
`n Information : **$description**`r
`n CPU : $cpu%
`n Free RAM : $ram MB
`n IPv4 : $ip
`n Bot : $botName 
`n BP BOT : $activeSlot | $totalSlot
`n World : $botWorld
`n Status : $statusBot

***[$date]***"
color = $color
thumbnail = $thumbnailObject

}
$embedArray.Add($embedObject) | Out-Null
$payload = [PSCustomObject]@{

embeds = $embedArray

}

Invoke-RestMethod -Uri $webHookUrl -Body ($payload | ConvertTo-Json -Depth 4) -Method Post -ContentType 'application/json'
�pipe�io�popen�powershell -command -�w�write�close���	#�$���webhook���dcbotname���thumbnail���colorEmbed���bot_name���active_slot���total_slot���bot_world���status_bot���message���script����_ENV���	���D����8��������ƀƀ��m�pairs�getObjects�id�count�������id���(for state)���(for state)���(for state)���(for state)���_���object����_ENV�������DK�/�LM6F�F���bp_active�pairs�getInventory�������(for state)���(for state)���(for state)���(for state)���_���item����_ENV����D���98�D���� D���D���	�DG��cekActiveSlot�getBot�slots�status�online�sendPacket�action|buy
item|upgrade_backpack�sleep�pshell�webhookdc�dcbotnamedc�thumbnaildc�colorEmbed�name�world�BACKPACK UPGRADED BECAUSE FULL BACKPACK��������_ENV���	�D9�8�����5D��K�D��������5D����DG��getBot�world�sendPacket�action|join_request
name|�
invitedWorld|0�sleep�|����������world_drop���id_drop_world����_ENV����D��χD����D��ÉD8���	D�DG��getBot�status�online�string�lower�login fail�powershell�Bot disconnected�name�removeBot�sleep�proxy_socks5�addBot�passwordBot�proxy�send_webhook_connect�Bot trying reconnect�Bot reconnected�Joinworld_id������worldmu�Éiddoormu�Á�_ENV�������D���	D��χDD��ۅD
�	D��χD����D����D������M���~��5D����D�������M�D�DG��findItem�move�sleep�sendPacket�action|drop
itemID|2204�action|dialog_return
dialog_name|drop_item
itemID|2204|
count|�powershell�**INFO ALIVE GEIGER**
: �ScanFloat������������_ENV������v�D@8��D�D���D���M�D	��c�D�D
��v�D	����D
��v��98� �D	���D��v�D	����D8�����v�D�DG��findItem�Joinworld_id�world_dead_geiger�id_door_dead�cekOnline�captcha�getBot�world�collect�sleep�current�item�drop�move�move_direction�powershell�**INFO DEAD GEIGER**
: �ScanFloat��������_ENV������_�D@8��D�D���D�	D
��_�D����D��v��98�� D���D
��_�D����D8��G��findItem�Joinworld_id�world_luminous�id_door_luminous�cekOnline�captcha�getBot�world�current�item�drop�sleep�move�move_direction�������_ENV������DK��D@�����LM�6���D�D �D����D ��98��D���D�D����D8��LM6��DK�
����D5LM6�D��χDF���ada�pairs�list_drop_usefull�findItem�Joinworld_id�world_usefull�id_door_usefull�cekOnline�captcha�getBot�world�current�drop�sleep�move�move_direction�total_pack�List drop usefull 
�
�webhook_item� | � : �ScanFloat�powershell���������(for state)���(for state)���(for state)���(for state)���_���item���(for state)�Ɍ(for state)�Ɍ(for state)�Ɍ(for state)�ɂ_�ƅitem�ƌ(for state)�݌(for state)�݌(for state)�݌(for state)�݂_�څitem�ځ�_ENV������DK��D@�����LM�6���D�D �D����D ��98��D���D�D����D8��LM6��DK�
����D5LM6�D��χDF���ada�pairs�list_drop_useless�findItem�Joinworld_id�world_useless�id_door_useless�cekOnline�captcha�getBot�world�current�drop�sleep�move�move_direction�total_pack�List drop useless 
�
�webhook_item� | � : �ScanFloat�powershell���������(for state)���(for state)���(for state)���(for state)���_���item���(for state)�Ɍ(for state)�Ɍ(for state)�Ɍ(for state)�ɂ_�ƅitem�ƌ(for state)�݌(for state)�݌(for state)�݌(for state)�݂_�څitem�ځ�_ENV������DK��D@�����LM�6���D�D �D����D ��98��D���D�D����D8��LM6��DK�
����D5LM6�D��χDF���ada�pairs�list_drop_geigerday�findItem�Joinworld_id�world_geigerday�id_door_geigerday�cekOnline�captcha�getBot�world�current�drop�sleep�move�move_direction�total_pack�List Geiger Day
�
�webhook_item� | � : �ScanFloat�powershell���������(for state)���(for state)���(for state)���(for state)���_���item���(for state)�Ɍ(for state)�Ɍ(for state)�Ɍ(for state)�ɂ_�ƅitem�ƌ(for state)�݌(for state)�݌(for state)�݌(for state)�݂_�څitem�ځ�_ENV���&���M�D 0 ���� 0 	"0"���� 0 	"0"	"0"��D�D�%�&'(�)DK� D@8�& �%��LM6(�*DK� D@8�& �%��LM6(�+DK� D@8�& �%��LM6%4D
�
�
�
5D6���7� 3�� � 0 � ��� 0 	"0"���� 0 	 "0"	 "0"���!	"D�;#"#.#" 0 ����#	$D�;#$%.%$ 0 	$"0"��5 DF�LM*68����/�@��8�I��@��8�I����D(�DK�@A� DLM�6(�DK�@A�DLM�6 4=�8X�4=�8V� q/�BB>8�B�/�B���B@�����B� �����;�J�B?�8I�BA�G�B@��8F� q/�CC>8�C�/�C���C@�8�B@��������χD8��D
0
�	��
�
0 	"0"�
��� 0 	"0"	"0"�5	DF�LM68s�B�/�B8]�8��F���findClothes�findItem�say�Wearing `2Geiger !�sleep�wear�time�os�Scanning....�greenx�greeny�posx�posy�counter�cekOnline�world_auto�id_door_auto�captcha�math�floor�getBot�x �y�getTile�fg�findPath�delay_scan�Found it !� Hours Uptime | �uptime�getSignal�green�rapid green�Finding Now�table�insert�i�j�signal�null�red�����������=�B��������������������Č(for state)�ǌ(for state)�ǌ(for state)�ǂi�ƌ(for state)�Ì(for state)�Ì(for state)�Âj�Œ(for state)���(for state)���(for state)���(for state)���_���item���(for state)�Ì(for state)�Ì(for state)�Ì(for state)�Â_���item���(for state)�Ҍ(for state)�Ҍ(for state)�Ҍ(for state)�҂_�υitem�ό(for state)���(for state)���(for state)���(for state)���_���inv���(for state)�֌(for state)�֌(for state)�֌(for state)�ւk�ӆkotak�ӌ(for state)��(for state)��(for state)��(for state)��l�߇kotaks�ߌ(for state)�،(for state)�،(for state)�،(for state)�؂_�Յitem�Ռ(for state)��(for state)��(for state)��(for state)��_��item��(for state)���(for state)���(for state)���(for state)���_��item��(for state)���(for state)���(for state)���(for state)���_���inv����_ENV�����DK���DD
� ���
��D�
�� 
D�
��D��
��DD�DD	����D�
��D
D�D	��ÉD8���9���D	����D9�����$�_���~��5D	����D���3�67D$��_�D@8���_�D	��c�D��LM(68��?��_�D��_�D	��χD���%�ABDCD!D"D#DD$��M�D@8	�%�&'D	����D4D	��|�D4D	��|�D4DD��D8�8e�LM��6F���pairs�listBot�banned�proxy_socks5�addBot�passwordBot�proxy�sleep�getBot�status�suspended�pshell�webhookdc�dcbotnamedc�thumbnaildc�colorEmbed�name�cekActiveSlot�slots�world�BOT BANNED�string�lower�online�powershell�Bot status is �connect�Success login bot ! Bot status is �dropDeadGeiger�dropLuminous�cekBP�dropUsefull�dropUseless�dropGeigerday�findItem�Joinworld_id�world_alive_geiger�id_door_alive�getObjects�id��findPath�math�floor�x �y�collect�cekOnline�captcha�dropGeiger�use_luminous�world_luminous�id_door_luminous��sendPacket�action|drop
itemID|6848�action|dialog_return
dialog_name|drop_item
itemID|6848|
count|�say�Wearing `#Luminous Eye�wear�findClothes�Wearing Luminous eye�world_auto�id_door_auto�findSignal�charge_geiger_with_bot�removeBot�������������������������ޒ�(for state)���(for state)���(for state)���(for state)���_���botName���(for state)���(for state)���(for state)���(for state)���_���obj���(for state)���(for state)���(for state)���(for state)���_���obj����_ENV�������k�c����%�9�B�3�$�0�A�A������������������������(for state)���(for state)���(for state)���i���(for state)�܌(for state)�܌(for state)�܌(for state)�܂_�مitem�ٌ(for state)��(for state)��(for state)��(for state)��_��item��(for state)��(for state)��(for state)��(for state)��_��item�_ENV
