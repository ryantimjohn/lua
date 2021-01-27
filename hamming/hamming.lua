local Hamming = {}

function Hamming.compute(a, b)
  local h = 0
  if #a ~= #b then
    return -1
  else
    for i = 1, #a do
      if a:sub(i, i) ~= b:sub(i, i) then
        h = h + 1
      end
    end
  end
  return h
end

return Hamming
