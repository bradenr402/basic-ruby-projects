def bubble_sort(array)
  sorted = false

  until sorted do
    i = 0
    sorted = true
    while i < (array.length - 1)
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        sorted = false
      end
      i += 1
    end
  end
  p array
end

bubble_sort([4,3,78,2,0,2])