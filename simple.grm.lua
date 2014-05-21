return {
   facade = { op="or",
      {
         condition = function () return math.random() < 0.5 end,
         action = split,
         param = {dir="y", {"window", -0.5}, {"plaster", 0}, {"window"}}
      },
      {
         action = split,
         param = {dir="y", {"plaster"}, {"window", 10}, {"plaster"}}
      }
   },
   plaster = {{
         action = draw,
         param = plaster
   }},
   window = {{
         action = draw,
         param = window
   }}
}
