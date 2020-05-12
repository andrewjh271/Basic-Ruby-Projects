def bubble_sort(arr)
  sorted_array = arr
  for i in 0...(arr.length) do
    (arr.length - 1).downto(i + 1) do |j|
      current_number = arr[j]
      next_number = arr[j - 1]
      swap(sorted_array, j, j-1) if next_number > current_number
    end
  end
  sorted_array
end

def swap(array, a, b)
  temp = array[a]
  array[a] = array[b]
  array[b] = temp
end

p bubble_sort([4,3,78,2,0,2])
p [4,3,78,2,0,2].sort

p bubble_sort([3, 6, 1, 8, 55, 99, 1, 0, 5, 2, 4, 3222, 5, 4, -85, 3, 3, 3, 646, 1, 5, 3, 5, 1, 6])
p [3, 6, 1, 8, 55, 99, 1, 0, 5, 2, 4, 3222, 5, 4, -85, 3, 3, 3, 646, 1, 5, 3, 5, 1, 6].sort

p bubble_sort([3, 1])
p bubble_sort([])