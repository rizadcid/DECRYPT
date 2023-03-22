LuaT� 

xV(w@�@TSSK.lua��%���OR��������������	��	
��
	��
�� �� �� N$R������������������	��
����	��	 
��
���� �� ��N$O�*O+O�,O-O�.O/O�0O1O�2O3O�4O5�67O�88DG��dumb�dumbi�Infobot�nam�A�B�C�D�E�F�G�H�I�J�K�L�M�N�O�P�Q�R�S�T�U�V�W�X�Y�Z�nam2�1�2�3�4�5�6�7�8�9�0�WearPickaxe�StartTrash�Log�BD�gscan�text�Tutor�regisA�regisB�regisC�naot�botstarts�res�https://lisensisitem.theosondakh.repl.co/api/growtopia/license/$Lic�checkLicense����������������€8���������� ��	��	����	�
��
D����������TAGuser�idow�PING! �Ping�� $webHookUrl = "�Webhook�"
$desc = "** TSSK AUTO CID **"
$cpu = (Get-WmiObject win32_processor | Measure-Object -property LoadPercentage -Average | Select Average).Average
$ram = (Get-Counter '\Memory\Available MBytes').CounterSamples.CookedValue
$fieldArray = @(
@{
name = "** _INFORMATION_ **"
value = "**�**"
inline = "false"
}
@{
name = "** _RDP STATS_**"
value = "**$cpu% | $ram MB**"
inline = "true"
}
@{
name = "**_OWNER SCRIPT_**"
value = "** | [DISCORD SERVER](https://discord.gg/D66Cav6ndh)**"
inline = "false"
}
)
$footer = [PSCustomObject]@{
icon_url = "https://media.discordapp.net/attachments/998991551873175682/1042296587088572536/standard_3.gif"
text = "�TSSK STORE | Date : �os�date�!%a, %b/%d/%Y at %I:%M %p�time�p�"
}
$embedObject = @{
description = $desc
color = "2303786"
fields = $fieldArray
footer = $footer

}
$embedArray = @($embedObject)
$payload = @{
'username' = 'TSSK CID'
'content' = '�'
embeds = $embedArray
}
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Invoke-RestMethod -Uri $webHookUrl -Body ($payload | ConvertTo-Json -Depth 4) -Method Post -ContentType 'application/json'
�io�popen�powershell -command -�w�write�close�������logs���script���pipe����_ENV����B���D��1�D��������	���5D��ÉD��D��W�D��0�D���D����D���D�����0���~��5D����D���0�D�D���DG��AUTOPX�Infobot�TAKING PICKAXE�sleep�sendPacket�action|join_request
name|�WORLDPX�upper�|�DOORID�
invitedWorld|0�collect�wear�action|drop
|itemID|98�action|dialog_return
dialog_name|drop_item
itemID|98|
count|�findItem�DONE WEAR PICKAXE
YOUR LAST PICKAXE : �gscan�������_ENV��� �B���DK� �D=��
������5D����D�������5D��c�DLM�6F���ClearBp�pairs�TrashList�findItem�sendPacket�action|trash
|itemID|�sleep�action|dialog_return
dialog_name|trash_item
itemID|�|
count|�������(for state)���(for state)���(for state)���(for state)���i���trash����_ENV����������������������file�io�open�tsskcid.txt�a�write�
�close������text����_ENV����������J�����D��c�DIG��punch�sleep�������(for state)���(for state)���(for state)���i����_ENV���	���D����8��������ƀƀ��count�pairs�getObjects�id�������id���(for state)���(for state)���(for state)���(for state)���_���obj����_ENV���	������J����0����*���D����DD��ÉD
����D���DD �������D��+�DD��D��k�D ������D���D ��ה����D����D����D��W�D����D���D���D���D��ۅD��	D���D�D����5D��ÉD ��Ӓ����D��1�D�D��D	�D��1�DG��SKIPTUTOR�sendPacket�ftue_start_popup_close�sleep�Infobot�STARTING TUTORIAL
�naot�
�getBot�world�findPath�enter�BD�place�collect�punch�move�wear�action|quit_to_exit�totTxt��text�action|join_request
name|�
invitedWorld|0�DONE TUTORIAL
����������_ENV���������������c�������������	�
����1������	�
5���1��� �������5����sleep�sendPacket�action|growid�action|dialog_return
dialog_name|growid_apply
logon|�GROWID�
password|�PASSWORD�
password_verify|�
email|�customEmail�DOMAIN�Log� | �Infobot�DONE CREATE BOT
GROWID : ||�upper�||
PASSWORD : ||�||������i����_ENV�������D���D��c�D����������	
5	D����D���	
�D��1�D ��D����D��1�DG��sleep�sendPacket�action|growid�action|dialog_return
dialog_name|growid_apply
logon|�GROWID�
password|�PASSWORD�
password_verify|�
email|�customEmail�DOMAIN�Log� | �Infobot�DONE CREATE BOT
GROWID : ||�upper�||
PASSWORD : ||�||�������_ENV�������J�B�8�����D��5�8�B������D��5�I	���D��c�D	����������5
D����D�
�
���D����D��D����D���D�D���DB8��D��ۅDD��ÉDDdialog_name|growid_apply
logon|�
password|�PASSWORD�
password_verify|�
email|�customEmail�DOMAIN�Log� | �Infobot�DONE CREATE BOT
GROWID : ||�upper�||
PASSWORD : ||�||�removeBot�AUTORELOG�addBot�connect�getBot�status�aap detected�online�SUCCESS TRIGGER AAP 
GROWID : ||����	���܆�i���totTx���(for state)���(for state)���(for state)���b����_ENV������DKF�LM6F���pairs�getPlayers�name�������(for state)���(for state)���(for state)���(for state)���_���player����_ENV����B8@�B��>���J8
�D����DD8�� �D�D�� �D���D���D�/���ÉDI�8
�D����DD8�� �D�D�� �D���D���D�,�B�&�B�8%���J�"���D��1�DD8
�D����DDGROWID : ||�name�upper�||�regisB�dumbi�HowMany�regisC�PLEASE CHOOSE ONE MODE
SORTNAME OR RANDOMNAME�����%���������(for state)���(for state)���(for state)���i���(for state)�Ɍ(for state)�Ɍ(for state)�ɂi�ȁ�_ENV������5������	D�
DO �D���5��������5���	���1���������5��������5�������$Lic = "�license�"
$HWID = (Get-ItemProperty registry::HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Cryptography\ -Name MachineGuid).MachineGUID
$Valid = "C:\Users\" + $env:UserName + "\AppData\Local\true.txt"
$InValid = "C:\Users\" + $env:UserName + "\AppData\Local\false.txt"
$url = "�res�"
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
�io�popen�powershell -NoLogo -WindowStyle Hidden -ExecutionPolicy Bypass -command -�w�write�close�file�os�getenv�USERNAME�C:\Users\�\AppData\Local\true.txt�remove�Infobot�REGISTRATION SUCCESS�sleep�botstarts�\AppData\Local\false.txt�LISENSI INVALID/EXPIRED
PLEASE CONTACT TSSK������������8��DH��HG��io�open�r�close������name���f����_ENV��
�
���script���pipe���username����_ENV�6�6������.�3��-�'�n�j9�8����_ENV