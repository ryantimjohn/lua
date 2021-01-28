local function Matrix(s)

  local lines = {}
  for line in s:gmatch("([^\n]+)") do
    table.insert(lines, line)
  end

  local m = {}
  for line in pairs(lines) do
    local row = {}
    for col in lines[line]:gmatch("([^ ]+)") do
      table.insert(row, tonumber(col))
    end
    table.insert(m, row)
  end

  local function row (index)
    return m[index]
  end

  local function column (index)
    local col = {}
    for row in pairs(m) do
      table.insert(col, m[row][index])
    end
    return col
  end

  return {row = row, column = column}
end

return Matrix