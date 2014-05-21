return {
   facade = { op = "and",
      {
         action = split,
         param = {dir = "y", {"facade_top", -0.7}, {"plaster", -0.1}, {"facade_bottom"}},
      },
      {
         action = draw,
         param = concrete
      }
   },
   facade_bottom = {{
         action = split,
         param = {dir = "x", {"window", -0.3}, {"concrete", -0.4}, {"window"}},
   }},
   facade_top = {{
         action = rep,
         param = {dir = "y", "elem", -0.2},
   }},
   elem = {{
         action = split,
         param = {dir = "y", {"plaster", -0.3} , {"floor"}},
   }},
   floor = { op = "or",
      {
         condition = function () return math.random() < 0.5 end,
         action = split,
         param = {dir = "x", {"concrete", -0.05}, {"window"}, {"concrete", -0.05}, {"window"}, {"concrete", -0.05}, {"window"}, {"concrete", -0.05}},
      },
      {
         action = split,
         param = {dir = "x", {"concrete", -0.1}, {"window"}, {"concrete", -0.1}, {"window"}, {"concrete", -0.1}},
      }
   },
   plaster = {{
         action = draw,
         param = plaster
   }},
   window = {{
         action = split,
         param = {dir = "y", {"sill"}, {"window_inner", -0.8}, {"sill"}},
   }},
   window_inner = {{
         action = split,
         param = {dir = "x", {"sill"}, {"glass", -0.8}, {"sill"}},
   }},
   sill = {{
         action = draw,
         param = sill
   }},
   glass = {{
         action = draw,
         param = window
   }}
}
