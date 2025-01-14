-----------------------------------------------------
--From: https://mods.factorio.com/mod/tree_collision
for _,tree in pairs(data.raw["tree"]) do
  tree.collision_box = {{-0.05, -0.05}, {0.05, 0.05}}
end

-----------------------------------------------------
--Settings Only for Space Age Mod or Vanilla
if mods["space-age"] then
  -- Code für Space Age Mod
  if settings.startup["easy_logistic-system"].value then
    -- same research requirements for logistic-system as robots
    data.raw.technology["logistic-system"].unit.ingredients = { 
      {"automation-science-pack", 1},   --red
      {"logistic-science-pack", 1},     --green
      {"chemical-science-pack", 1}      --blue
      --{"space-science-pack", 1}       --white
    }

    -- prerequisite are now only robot researches, removed space sience
    data.raw.technology["logistic-system"].prerequisites = { "logistic-robotics", "construction-robotics" }
  end

  if settings.startup["easy_kovarex"].value then
  -- kovarex without space science
    data.raw.technology["kovarex-enrichment-process"].unit.ingredients = { 
        {"automation-science-pack", 1},   --red
        {"logistic-science-pack", 1},     --green
        {"chemical-science-pack", 1},     --blue
        --{"space-science-pack", 1}       --white
      }

    -- prerequisite are now only rocket fuel and uranium processing, removed production science
    data.raw.technology["kovarex-enrichment-process"].prerequisites = { "rocket-fuel", "uranium-processing" }
  end

else
  -- Code für Vanilla
  if settings.startup["easy_logistic-system"].value then
  -- same research requirements for logistic-system as robots
    data.raw.technology["logistic-system"].unit.ingredients = { 
        {"automation-science-pack", 1},   --red
        {"logistic-science-pack", 1},     --green
        {"chemical-science-pack", 1}      --blue
        --{"utility-science-pack", 1}     --yellow
      }

    -- prerequisite are now only robot researches, removed utility science
    data.raw.technology["logistic-system"].prerequisites = { "logistic-robotics", "construction-robotics" }
  end

  if settings.startup["easy_kovarex"].value then
    -- kovarex without purple science
    data.raw.technology["kovarex-enrichment-process"].unit.ingredients = { 
        {"automation-science-pack", 1},   --red
        {"logistic-science-pack", 1},     --green
        {"chemical-science-pack", 1},     --blue
        --{"production-science-pack", 1}  --purple
      }

    -- prerequisite are now only rocket fuel and uranium processing, removed production science
    data.raw.technology["kovarex-enrichment-process"].prerequisites = { "rocket-fuel", "uranium-processing" }
  end
end


-----------------------------------------------------
--Infos
-----------------------------------------------------
--Science Packs
  --{"automation-science-pack", 1}    --red
  --{"logistic-science-pack", 1}      --green
  --{"chemical-science-pack", 1}      --blue
  --{"military-science-pack", 1}      --grey
  --{"production-science-pack", 1}    --purple
  --{"utility-science-pack", 1}       --yellow
  --{"space-science-pack", 1}         --white

