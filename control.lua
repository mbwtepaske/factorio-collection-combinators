local event = require('__stdlib__/stdlib/event/event')
local names = require('names')

function entity_placed(event)
  local entity = event.created_entity

  for index, value in ipairs(names) do
    if entity.name == names[index] then 
    end
  end
end

function entity_mined(event)
  local entity = event.entity
end

event.register(defines.events.on_built_entity, entity_placed)
event.register(defines.events.on_player_mined_entity, entity_mined)
event.register(defines.events.on_robot_built_entity, entity_placed)
event.register(defines.events.on_robot_mined_entity, entity_mined)