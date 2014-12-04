def bubble_sort(array)
  j = 1
  while (j < array.length)
    i = 0
    while (i < (array.length - 1))
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
      end
      i += 1   
    end
    j += 1
  end
  return array
end

puts bubble_sort([4,3,78,2,0,2])
