--same research requirements for logistic-system as robots
data.raw.technology["logistic-system"].unit.ingredients = { 
    {"automation-science-pack", 1},
    {"logistic-science-pack", 1},
    {"chemical-science-pack", 1}
    --{"utility-science-pack", 1}
  }
  
--prerequisite are now only robot researches, removed production science
data.raw.technology["logistic-system"].prerequisites = { "logistic-robotics", "construction-robotics" }

--kovarex without purple science
data.raw.technology["kovarex-enrichment-process"].unit.ingredients = { 
    {"automation-science-pack", 1},
    {"logistic-science-pack", 1},
    {"chemical-science-pack", 1},
    --{"production-science-pack", 1}
  }
  
--prerequisite are now only rocket fuel and uranium processing, removed production science
data.raw.technology["kovarex-enrichment-process"].prerequisites = { "rocket-fuel", "uranium-processing" }

--Science Packs
--{"automation-science-pack", 1}    --red
--{"logistic-science-pack", 1}      --green
--{"chemical-science-pack", 1}      --blue
--{"military-science-pack", 1}      --grey
--{"production-science-pack", 1}    --purple
--{"utility-science-pack", 1}       --yellow
--{"space-science-pack", 1}         --white
