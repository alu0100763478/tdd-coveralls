def ordenados_for(array)
  list = array.dup
  return list if list.size <= 1 # already sorted
  swapped = true
  while swapped do
    swapped = false
    0.upto(list.size-2) do |i|
      if (i<list.size-1) && (list[i].ve > list[i+1].ve)
        list[i], list[i+1] = list[i+1], list[i] # swap values
        swapped = true
      end
    end    
  end
  list
end
