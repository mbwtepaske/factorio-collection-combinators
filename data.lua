local Table = require("__stdlib__/stdlib/utils/table")
local Names = require("names")

for index, name in ipairs(Names) do
  local entity = Table.deep_copy(data.raw["decider-combinator"]["decider-combinator"])

  entity.name = name

  data:extend
  {
    -- recipes
    {
      type        = "recipe",
      name        = name,
      enabled     = "true",
      ingredients =
      {
      },
      result      = name
    },

    -- items
    {
      type          = "item",
      name          = name,
      icon          = "__base__/graphics/icons/decider-combinator.png",
      icon_size     = 32,
      order         = "c[combinators]",
      place_result  = name,
      stack_size    = 50,
      subgroup      = "circuit-network",
    },

    -- entities
    entity
  }

  table.insert(data.raw.technology["circuit-network"].effects, 
  {
    type    = "unlock-recipe",
    recipe  = name
  })
end