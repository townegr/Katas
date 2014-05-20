def solution(items, index, default_value)
  if (items.count - 1) >= index && items.count >= index.abs
    return items[index]
  else
    return default_value
  end
end

#refactoring '#solution'
def solution(items, index, default_value)
  items.fetch(index, default_value)
end
