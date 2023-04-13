--KEY
key = 'JTFS GT' -- Optional You Can Put Your Name
length = 128
script = [[
LuaT� 

xV(w@�@/root/obfuscator2/obfuscated/People,#1942.lua��������D����D����D��%�D��D��W�D�D����D��D����D�D���D��D���D�����5R���D�OO�OO�OO�OO�OO� ��DD"�����$�%&D'(0(���$�%&D*(0(��5D�D8��GG��PPS'�SendPacket�action|input
|text|`bSCRIPT BY SIMON & BLACKG�Sleep�action|input
|text|`bSCRIPT LOADING MOHON CEK CONSOLE�LogToConsole�[`#SCRIPT LOADING]�[`#SCRIPT LOADING.]�[`#SCRIPT LOADING..]�[`#SCRIPT LOADING...]�[`#SCRIPT LOADED]�dialog�add_label_with_icon|big|`6Auto SURG|left|�|
add_spacer|small|
add_label_with_icon|small|`0Information!|left|2480|
add_textbox|`6Script Made By `b@Simon `6And `b@BlackGCH|left|
add_textbox|`bThis Script Beta Version! So There Have Little Bug|left|
add_spacer|small|
add_label_with_icon|small|`0`0Read This!|left|32|
add_textbox|`b- This Script Work Only In Creative-PS|left|
add_textbox|`b- Do Not Resell This!!|left|
add_spacer|small|
add_label_with_icon|small|`bBlackG Group|3229|3898|
add_spacer|small|
add_url_button|comment|`7 Telegram |noflags|https://t.me/BlackGGroup| Check My Telegram Group!|18|
add_label_with_icon|small|`0My Social Media!|3229|3898|
add_spacer|small|
add_url_button|comment|`6 Telegram |noflags|https://t.me/SimonRileyScript|Check Out My Telegram!|18|
add_spacer|small|
add_button|| Continue! |�var�v0�OnDialogRequest�v1�SendVariant�id��PlaceTile�surge�sponge�anasthetic�scalpel�antiseptic�antibiotics�stitches�fix�surg�AddHook�OnVariant�SendPacket�action|dialog_return
|dialog_name|surge_edit
|x|�math�floor�GetLocal�posX �|
y|�posY�|�������R�D��D��������	��
������pkt�x�GetLocal�posX�y�posY�px�py�type�value�SendPacketRaw������id���x���y����_ENV����������D��D0�DG��PlaceTile�id�math�floor�GetLocal�posX �posY�������_ENV��������D��D����DG��SendPacket�action|dialog_return
dialog_name|surgery
buttonClicked|command_0�LogToConsole�[`#Simon Using Sponge]�Sleep�������_ENV��������D��D����DG��SendPacket�action|dialog_return
dialog_name|surgery
buttonClicked|command_2�LogToConsole�[`#Simon Using Anasthetic]�Sleep�������_ENV��������D��D����DG��SendPacket�action|dialog_return
dialog_name|surgery
buttonClicked|command_1�LogToConsole�[`#Simon Using Scalpel]�Sleep�������_ENV��������D��D����DG��SendPacket�action|dialog_return
dialog_name|surgery
buttonClicked|command_3�LogToConsole�[`#Simon Using Antiseptic]�Sleep�������_ENV��������D��D����DG��SendPacket�action|dialog_return
dialog_name|surgery
buttonClicked|command_4�LogToConsole�[`#Simon Using Antibiotic]�Sleep�������_ENV��������D��D����DG��SendPacket�action|dialog_return
dialog_name|surgery
buttonClicked|command_6�LogToConsole�[`#Simon Using Stitches]�Sleep�������_ENV��������D��D����DG��SendPacket�action|dialog_return
dialog_name|surgery
buttonClicked|command_7�LogToConsole�[`#Simon FIX IT]�Sleep�������_ENV�����������������������8����������������������8����������������������8�������������������
��8���������������������������� ����8���������������������������� ����8��������������
�������������� ����8���������������
������������� ����8��������������������������� ����8s������������� ��������� ����� ����8g���������������������� ����� ����8[����������������������� ����� ����8O��������������������������� "����8C���������������������������� "����87��������������������������� "����8+���������������������������� "����8��������������������������� "����8���������������������������� "����8��������������������������� "����8����������������������������� "����8���������������������������� "����8����������������������������� "����8���������������������������� "����8���������������������������� .����8������������������������ ����� .����8���������������������������� .����8����������������������������� .����8���������������������������� .����8����������������������������� .����8���������������������������� .����8w��������������������������� 7�8���8k��������������������������� 7�8���8_�������������������������� 7�8���8S��������������������������� 7�8���8G�������������������������� 7�8���8;��������������������������� 7�8���8/�������������������������� 7�8���8#��������������������������� 7�8���8������������� ������������� 7�8���8�������8�������8�������8�� 7�8��������v1�find�OnDialogRequest�v2�|dialog_return
dialog_name|surgery
buttonClicked|command_7�scalpel�|dialog_return
dialog_name|surgery
buttonClicked|command_2�stitches�|dialog_return
dialog_name|surgery
buttonClicked|command_0�Status: `4Awake!�command_2�tool�Anasthetic�anasthetic�Operation site: `6Unclean�command_3�Antiseptic�antiseptic�You spilled antiseptic on your shoes(.+) They are very clean now(.+)�`4You can't see what you are doing(!+)�command_0�Sponge�sponge�`6It is becoming hard to see your work(.+)�Patient's fever is`3slowly rising(.+)�command_4�Antibiotics�antibiotics�The patient falls into a deep sleep(.+)�This is the wrong medication(! +) The bacteria like it(.+)�You mopped up the operating site�command_6�Stitches�You somehow tied yourself up in stitches!�You grafted in some nice new arteries(!+)�You disinfected the operating site(.+)�You stitched up an incision(.+)�You excised the tumor(!+)�You popped in a fresh new kidney(!+)�You yanked out the appendix(!+)�You got the lock out(!+) (You don't get to keep it)�You repaired the disc(!+)�You bandaged some injuries(.+)�command_1�Scalpel�This is the wrong medication! the bacteria like it(.+)�You used antibiotics to reduce the patient's infection(.+)�With such tough skin , it'll take another cut to get through(.+)�You've made a neat incision(.+)�This will leave a nasty scar, but you managed to cut the right place.�You tried to stitch your patient's mouth shut!(.+)�You screwed it up(!+) Try again(.+)�command_7�Fix it�fix�You mopped up the operating site(.+)�`4You stabbed the patient in a vital organ(!+)�`0The lungs are now exposed(.+)�`0The heart now exposed for operating(.+)�`0You now have access to the appendix(.+)�You now have access to the bad kidney(.+)�You've finally found the tumor(!+)�You've opened the stomach(.+)���������������������������var����_ENV��
��
�	�	�	�	�	�	��������������_ENV
]] ---- Put Your Script

tambahan = [[kucing = "Subscribe JTFS GT"
]] ---- Part Script Doesn't To Encrpyt

local enc,variable,i,ram,fungwal,swe,asd,ayo,awik,pol = '','','','','','','','','',''

charTable = {}

chars = 'abcdefghijklmnopqrstuvwxyz'
for c in chars:gmatch"." do
    table.insert(charTable, c)
end

function rand(encrypt)
   math.randomseed(math.floor(encrypt*os.clock()*os.time()*os.clock()))
   a = math.random(1,100)
   return a
end

for o = 1, length do
    fungwal = fungwal .. charTable[math.random(1, #charTable)]
    enc = enc .. charTable[math.random(1, #charTable)]
    variable = variable .. charTable[math.random(1, #charTable)]
    ram = ram .. charTable[math.random(1, #charTable)]
    i = i .. charTable[math.random(1, #charTable)]
    swe = swe .. charTable[math.random(1, #charTable)]
    asd = asd .. charTable[math.random(1, #charTable)]
    ayo = ayo .. charTable[math.random(1, #charTable)]
    awik = awik..charTable[math.random(1, #charTable)]
    pol = pol..charTable[math.random(1, #charTable)]
end

char = ''

obf = {1, string.len(key)*16, 3}

function encrypt()
for i=1, string.len(script) do
table.insert(obf, string.byte(script, i) + (string.len(key)*16))
end
end
encrypt()

function tebar(str)
   if type(str) == 'table' then
      local tables = '{ '
      for i,nau in pairs(str) do
         if type(i) ~= 'number' then k = '"'..k..'"' end tables = tables .. '' .. tebar(nau) .. ',' end tables = tables ..'}' tables = tables:gsub(',}', '') tables = tables..'}'
   return tables
   else
      return tostring(str)
   end
end

buff = ''

nautolan = "'Obfuscator Ini Milik Seseorang'"
mencari = "'Kamu Nyari Load?'"
menukik = "'Saya Tak Ragu Ingin Nembak Gay People'"
tokoh = [["Soeharto is first indonesian president. Jokowi is seventh indonesian's president, Itadori Yuuji is one of main character in Jujutsu Kaisen Anime, Kento Nanami is Side Character On Jujutsu Kaisen Anime. Lava is 1 of the most dangerous liquid in the world (cap)"]]
balasan = "'load'"
putri = "'loadstring'"
burhan = "'om jangan decrypt aku :(('"

function decrypt()
   text = "local "..variable.."='';for "..i.."=1, #"..enc.." do if "..i..">3 then "..variable.."="..variable..".._ENV['\\115\\116\\114\\105\\110\\103']['\\99\\104\\97\\114'](("..enc.."["..i.."]-"..enc.."[2]));end end;local tolan = "..putri..";_ENV[_ENV['\\115\\116\\114\\105\\110\\103']['\\99\\104\\97\\114']("..awik..":lower():sub(18,18):byte(),"..swe..":lower():sub(1,1):byte(),"..pol..":lower():sub(-9,-9):byte(),"..ayo..":lower():sub(21,21):byte())]("..variable..")(); end;"
   return text
end

output = "key=[["..key.."]];"..swe.."="..burhan..";"..awik.."="..nautolan..";"..asd.."="..mencari..";"..pol.."="..menukik..";"..ayo.."="..tokoh..";"..enc.."="..tebar(obf)..";local nau = "..balasan.."; function "..fungwal.."(...) "..decrypt()..""..fungwal.."("..enc..");"

print("-- Script By JTFS GT\n\n"..tambahan.."\n\n"..output)