local house = {}

local parts = {
{"lay in","house that Jack built."},
{"ate","malt"},
{"killed","rat"},
{"worried","cat"},
{"tossed","dog"},
{"milked","cow with the crumpled horn"},
{"kissed","maiden all forlorn"},
{"married","man all tattered and torn"},
{"woke","priest all shaven and shorn"},
{"kept","rooster that crowed in the morn"},
{"belonged to","farmer sowing his corn"},
{"","horse and the hound and the horn"}
}

function house.verse(which)
  local v = ""
  for i=which,1,-1 do
    if i==which then
      v=v .. string.format("This is the %s", parts[i][2])
    else
      v=v .. string.format("that %s the %s", parts[i][1],parts[i][2])
    end
    if i ~= 1 then
      v=v.."\n"
    end
  end
  return v
end

function house.recite()
  v = {}
  for i=1,#parts do
    v[i] = house.verse(i)
  end
  return table.concat(v,'\n')
end

return house
