local pairs
	= pairs


local SUBSCRIBERS_EVENTS_SET_OF_KIND = {
	["set"] = {},
	["delete"] = {},
	["change"] = {},
}

--- @class equipment.Event
local Event = {}

--- @private
Event.subscribers = {
	["*any*"] = table.copy(SUBSCRIBERS_EVENTS_SET_OF_KIND),
}

--- @internal
--- @param kind string kind(type) of equipment. For ex. "armor"|"clothing"|<your_one>.
function Event.addSubscribersKind(kind)
	Event.subscribers[kind] = table.copy(SUBSCRIBERS_EVENTS_SET_OF_KIND)
end

--- @param kind     string equipment kind(type)
--- @param event    string
--- @param callback fun(player:Player, kind:string, event:string, slot:number, item:ItemStack)
function Event.subscribe(kind, event, callback)
	table.insert(Event.subscribers[kind][event], callback)
end

--- @private
function Event.notify(player, kind, event, slot, item)
	for _, callback in pairs(Event.subscribers[kind][event]) do
		callback(player, kind, event, slot, item)
	end
end

function Event.trigger(player, kind, event, slot, item)
	Event.notify(player, kind, event, slot, item)
	Event.notify(player, kind, "change", slot, item)  -- TODO use Event.CHANGE constant
	Event.notify(player, "*any*", event, slot, item)
	Event.notify(player, "*any*", "change", slot, item)
end

return {
	addSubscribersKind = Event.addSubscribersKind,
	subscribe          = Event.subscribe,
	trigger            = Event.trigger,
}
