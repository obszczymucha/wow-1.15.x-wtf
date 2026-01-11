
BugGrabberDB = {
["session"] = 989,
["lastSanitation"] = 3,
["errors"] = {
{
["message"] = "...Ons/Auctionator/Source/Utilities/GetNameFromLink.lua:2: bad argument #1 to 'match' (string expected, got nil)",
["time"] = "2026/01/01 17:14:24",
["locals"] = "(*temporary) = nil\n(*temporary) = \"h%[(.*)%]|h\"\n(*temporary) = \"string expected, got nil\"\n",
["stack"] = "[C]: in function 'match'\n[Interface/AddOns/Auctionator/Source/Utilities/GetNameFromLink.lua]:2: in function 'GetNameFromLink'\n[Interface/AddOns/Auctionator/Source_LegacyAH/Tabs/Cancelling/Mixins/UndercutScan.lua]:174: in function 'SearchForUndercuts'\n[Interface/AddOns/Auctionator/Source_LegacyAH/Tabs/Cancelling/Mixins/UndercutScan.lua]:124: in function 'NextStep'\n[Interface/AddOns/Auctionator/Source_LegacyAH/Tabs/Cancelling/Mixins/UndercutScan.lua]:231: in function 'ProcessScanResult'\n[Interface/AddOns/Auctionator/Source_LegacyAH/Tabs/Cancelling/Mixins/UndercutScan.lua]:151: in function <...rce_LegacyAH/Tabs/Cancelling/Mixins/UndercutScan.lua:150>\n[C]: in function 'xpcall'\n[Interface/AddOns/Blizzard_ObjectAPI/Classic/Item.lua]:298: in function 'FireCallbacks'\n[Interface/AddOns/Blizzard_ObjectAPI/Classic/Item.lua]:260: in function <Interface/AddOns/Blizzard_ObjectAPI/Classic/Item.lua:256>\n[C]: ?\n[C]: in function 'RequestLoadItemDataByID'\n[Interface/AddOns/Blizzard_ObjectAPI/Classic/Item.lua]:274: in function 'AddCallback'\n[Interface/AddOns/Blizzard_ObjectAPI/Classic/Item.lua]:238: in function 'ContinueOnItemLoad'\n[Interface/AddOns/Auctionator/Source_LegacyAH/Tabs/Cancelling/Mixins/UndercutScan.lua]:150: in function 'ReceiveEvent'\n[Interface/AddOns/Auctionator/Source/Utilities/EventBusMixin.lua]:77: in function 'Fire'\n[Interface/AddOns/Auctionator/Source_LegacyAH/AH/Mixins/Scan.lua]:100: in function 'ProcessSearchResults'\n[Interface/AddOns/Auctionator/Source_LegacyAH/AH/Mixins/Scan.lua]:39: in function <...ddOns/Auctionator/Source_LegacyAH/AH/Mixins/Scan.lua:36>",
["session"] = 929,
["counter"] = 1,
},
{
["message"] = "Lua error in aura 'ST_ProfessionIcon': Trigger 1\nWeakAuras Version: 5.19.9\nStack trace:\n[string \"return function(allstates, event)\"]:9: attempt to call global 'GetSkillLevelInfo' (a nil value)",
["time"] = "2026/01/11 13:37:08",
["locals"] = "result = <table> {\n}\nicons = <table> {\n Herbalism = 133939\n Mining = 133939\n}\n(for index) = 1\n(for limit) = 22\n(for step) = 1\ni = 1\n(*temporary) = nil\n(*temporary) = 1\n(*temporary) = \"attempt to call global 'GetSkillLevelInfo' (a nil value)\"\n",
["stack"] = "[return function(allstates, event)]:9: in function 'get_skills'\n[return function(allstates, event)]:25: in function <[string \"return function(allstates, event)\"]:1>\n[C]: in function 'xpcall'\n[Interface/AddOns/WeakAuras/GenericTrigger.lua]:671: in function <Interface/AddOns/WeakAuras/GenericTrigger.lua:656>\n[Interface/AddOns/WeakAuras/GenericTrigger.lua]:1127: in function 'CreateFakeStates'\n[Interface/AddOns/WeakAuras/WeakAuras.lua]:4682: in function 'UpdateFakeStatesFor'\n[Interface/AddOns/WeakAuras/WeakAuras.lua]:4658: in function 'FakeStatesFor'\n[Interface/AddOns/WeakAuras/WeakAuras.lua]:3240: in function <Interface/AddOns/WeakAuras/WeakAuras.lua:3092>\n[Interface/AddOns/WeakAuras/WeakAuras.lua]:3264: in function 'Add'\n[Interface/AddOns/WeakAurasOptions/OptionsFrames/TextEditor.lua]:1032: in function 'Close'\n[Interface/AddOns/WeakAurasOptions/OptionsFrames/TextEditor.lua]:213: in function <...AddOns/WeakAurasOptions/OptionsFrames/TextEditor.lua:212>",
["session"] = 989,
["counter"] = 2,
},
},
}
