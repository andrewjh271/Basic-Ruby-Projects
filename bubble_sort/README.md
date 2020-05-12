# Bubble Sort

### Assignment

Build a method `#bubble_sort` that takes an array and returns a sorted array. It must use the bubble sort methodology (using `#sort` would be pretty pointless, wouldn’t it?).

```ruby
> bubble_sort([4,3,78,2,0,2])
=> [0,2,2,3,4,78]
```

### Thoughts

I am still finding the loops in Ruby to be strange and kind of annoying. I am so used to thinking in Java-style for loops, so actually being able to write that way in the pseudocode was helpful. I hope to get some guidance on style and syntax from the mentors at Exercism once I encounter some looping exercises there.

I originally destructively sorted the array passed to the method, but decided to change that in order to imitate the behavior of Ruby's sort method.

### Plan

Starting from right to left, compare each number with the next one, and swap if the next number is larger than the current number. After one iteration, the smallest number is at the beginning of the array, so repeat only through the second item in the array, and so on. I will make a small swap method so the bubble sort can be more concise.

### Pseudocode

```pseudocode
Pseudocode
for i = 0; i < (array.length - 2); i++
  for j = array.length - 1; j > i; j--
    current_number = array[j]
    next_number = array[j-1]
    if next_number > current_number swap(j, j-1)
  end
end

swap(current, next)
  temp = array[j]
  array[j] = array[j-1]
  array[j-1] = temp
```