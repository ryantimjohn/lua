return function(array, target)
  right = #array
  right = right + 1
  left = 0
  dist = right - left
  i = left + dist//2
  while dist > 1 do
    guess = array[i]
    if guess == target then
      return i
    elseif guess > target then
      right = i
    elseif guess < target then
      left = i
    end
    dist = right - left
    i = left + dist//2
  end
  return - 1
end
