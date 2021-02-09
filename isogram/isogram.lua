return function(s)
  local seen_so_far = {}
  for c in s:gmatch"%a" do
    c = c:lower()
    if seen_so_far[c] then
      return false
    else
      seen_so_far[c] = true
    end
  end
  return true
end
