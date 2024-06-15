def bubble_sort(arr)
  sorted_array = arr
  (0...(arr.length)).each do |i|
    (arr.length - 1).downto(i + 1) do |j|
      current_number = arr[j]
      next_number = arr[j - 1]
      swap(sorted_array, j, j - 1) if next_number > current_number
    end
  end
  sorted_array
end

def swap(array, first, second)
  temp = array[first]
  array[first] = array[second]
  array[second] = temp
end
