
BugGrabberDB = {
["session"] = 995,
["lastSanitation"] = 3,
["errors"] = {
{
["message"] = "Lua error in aura 'ResourceTracker_Icon': Trigger 1\nWeakAuras Version: 5.19.9\nStack trace:\n[string \"return function(allstates, event)\"]:63: table index is nil",
["time"] = "2026/01/11 14:33:48",
["locals"] = "allstates = <table> {\n}\nevent = \"OPTIONS\"\n(for state) = <table> {\n 3356 = <table> {\n }\n}\n(for control) = 3356\nitem_id = 3356\nitem = <table> {\n resource = <table> {\n }\n count = 3\n}\nstate = <table> {\n show = true\n resource = <table> {\n }\n duration = 0\n resource_count = 3\n changed = true\n icon = 134183\n progressType = \"static\"\n}\n(*temporary) = nil\n(*temporary) = \"table index is nil\"\n",
["stack"] = "[return function(allstates, event)]:63: in function <[string \"return function(allstates, event)\"]:1>\n[C]: in function 'xpcall'\n[Interface/AddOns/WeakAuras/GenericTrigger.lua]:671: in function <Interface/AddOns/WeakAuras/GenericTrigger.lua:656>\n[Interface/AddOns/WeakAuras/GenericTrigger.lua]:1127: in function 'CreateFakeStates'\n[Interface/AddOns/WeakAuras/WeakAuras.lua]:4682: in function 'UpdateFakeStatesFor'\n[Interface/AddOns/WeakAuras/WeakAuras.lua]:4658: in function 'FakeStatesFor'\n[Interface/AddOns/WeakAurasOptions/AceGUI-Widgets/AceGUIWidget-WeakAurasDisplayButton.lua]:1575: in function 'SyncVisibility'\n[Interface/AddOns/WeakAurasOptions/AceGUI-Widgets/AceGUIWidget-WeakAurasDisplayButton.lua]:1601: in function 'PriorityShow'\n[Interface/AddOns/WeakAurasOptions/WeakAurasOptions.lua]:730: in function <...terface/AddOns/WeakAurasOptions/WeakAurasOptions.lua:699>",
["session"] = 994,
["counter"] = 2,
},
{
["message"] = "Lua error in aura 'ResourceTracker_Icon': Custom Text Function\nWeakAuras Version: 5.19.9\nStack trace:\n[string \"return function()\"]:6: attempt to index local 'resource' (a nil value)",
["time"] = "2026/01/11 14:33:48",
["locals"] = "state = <table> {\n triggernum = 1\n progressType = \"timed\"\n changed = true\n expirationTime = 19914.702000\n show = true\n autoHide = false\n id = \"ResourceTracker_Icon\"\n trigger = <table> {\n }\n duration = 7\n}\nresource = nil\ntotal = \"\"\n(*temporary) = \"%s%s\"\n(*temporary) = true\n(*temporary) = true\n(*temporary) = \"attempt to index local 'resource' (a nil value)\"\n",
["stack"] = "[return function()]:6: in function <[string \"return function()\"]:1>\n[C]: in function 'xpcall'\n[Interface/AddOns/WeakAuras/WeakAuras.lua]:5027: in function 'RunCustomTextFunc'\n[Interface/AddOns/WeakAuras/SubRegionTypes/SubText.lua]:331: in function '?'\n[Interface/AddOns/WeakAuras/SubscribableObject.lua]:94: in function 'Notify'\n[Interface/AddOns/WeakAuras/WeakAuras.lua]:4767: in function <Interface/AddOns/WeakAuras/WeakAuras.lua:4762>\n[Interface/AddOns/WeakAuras/WeakAuras.lua]:4854: in function <Interface/AddOns/WeakAuras/WeakAuras.lua:4820>\n[Interface/AddOns/WeakAuras/WeakAuras.lua]:4963: in function 'UpdatedTriggerState'\n[Interface/AddOns/WeakAuras/WeakAuras.lua]:4685: in function 'UpdateFakeStatesFor'\n[Interface/AddOns/WeakAuras/WeakAuras.lua]:4658: in function 'FakeStatesFor'\n[Interface/AddOns/WeakAurasOptions/AceGUI-Widgets/AceGUIWidget-WeakAurasDisplayButton.lua]:1575: in function 'SyncVisibility'\n[Interface/AddOns/WeakAurasOptions/AceGUI-Widgets/AceGUIWidget-WeakAurasDisplayButton.lua]:1601: in function 'PriorityShow'\n[Interface/AddOns/WeakAurasOptions/WeakAurasOptions.lua]:730: in function <...terface/AddOns/WeakAurasOptions/WeakAurasOptions.lua:699>",
["session"] = 994,
["counter"] = 7,
},
{
["message"] = "Lua error in aura 'ResourceTracker_Icon': Custom Text Function\nWeakAuras Version: 5.19.9\nStack trace:\n[string \"return function()\"]:6: bad argument #2 to 'format' (string expected, got nil)",
["time"] = "2026/01/11 14:34:32",
["locals"] = "(*temporary) = \"%s%s\"\n(*temporary) = nil\n(*temporary) = 3\n(*temporary) = \"string expected, got nil\"\n",
["stack"] = "[C]: in function 'format'\n[return function()]:6: in function <[string \"return function()\"]:1>\n[C]: in function 'xpcall'\n[Interface/AddOns/WeakAuras/WeakAuras.lua]:5027: in function 'RunCustomTextFunc'\n[Interface/AddOns/WeakAuras/SubRegionTypes/SubText.lua]:331: in function '?'\n[Interface/AddOns/WeakAuras/SubscribableObject.lua]:94: in function 'Notify'\n[Interface/AddOns/WeakAuras/WeakAuras.lua]:4767: in function <Interface/AddOns/WeakAuras/WeakAuras.lua:4762>\n[Interface/AddOns/WeakAuras/WeakAuras.lua]:4854: in function <Interface/AddOns/WeakAuras/WeakAuras.lua:4820>\n[Interface/AddOns/WeakAuras/WeakAuras.lua]:4963: in function 'UpdatedTriggerState'\n[Interface/AddOns/WeakAuras/WeakAuras.lua]:4685: in function 'UpdateFakeStatesFor'\n[Interface/AddOns/WeakAuras/WeakAuras.lua]:4658: in function 'FakeStatesFor'\n[Interface/AddOns/WeakAuras/WeakAuras.lua]:3240: in function <Interface/AddOns/WeakAuras/WeakAuras.lua:3092>\n[Interface/AddOns/WeakAuras/WeakAuras.lua]:3264: in function 'Add'\n[Interface/AddOns/WeakAurasOptions/OptionsFrames/TextEditor.lua]:1032: in function 'Close'\n[Interface/AddOns/WeakAurasOptions/OptionsFrames/TextEditor.lua]:213: in function <...AddOns/WeakAurasOptions/OptionsFrames/TextEditor.lua:212>",
["session"] = 994,
["counter"] = 1,
},
},
}
