def prime?(num)
  range = (2...105558).to_a
  if range.include?(num)
    num_index = range.index(num)
    range.delete_at(num_index)
  end
  new_range = []
  range.each do |other_number|
      new_range.push(num % other_number)
  end
  if new_range.include?(0) || num <= 1
    return false
  else
    return true
  end
end