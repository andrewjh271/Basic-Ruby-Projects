# Substrings

### Assignment

- Implement a method `#substrings` that takes a word as the first argument and then an array of valid substrings (your dictionary) as the second argument. It should return a hash listing each substring (case insensitive) that was found in the original string and how many times it was found.

  ```ruby
    > dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
    => ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
    > substrings("below", dictionary)
    => { "below" => 1, "low" => 1 }
  ```

  Next, make sure your method can handle multiple words:

  ```ruby
    > substrings("Howdy partner, sit down! How's it going?", dictionary)
    => { "down" => 1, "how" => 2, "howdy" => 1,"go" => 1, "going" => 1, "it" => 2, "i" => 3, "own" => 1,"part" => 1,"partner" => 1,"sit" => 1 }
  ```

  **Quick Tips:**

  - Recall how to turn strings into arrays and arrays into strings.

### Thoughts

Since these projects directly follow the sections on pseudocode and problem solving, I am planning to go through the steps of actually setting my plan and pseudocode into writing. The function was fairly smooth to write after getting the pseudocode down. I think it was helpful to go through this process. The one bug I was stuck on for a little while resulted from forgetting to return the accumulator at the end of the reduce block. I was returning `word_count[word] = count if count >= 1 ` instead.

### Plan

For each item in the dictionary, scan the string and count the number of times the item appears. If it appears once or more, add it to a hash with the dictionary word as the key and the number of times it appeared as the value.

### Pseudocode

```pseudocode
substrings(string, dictionary)
  word_count = new Hash
  For each item in dictionary:
    count the number of times it appears in the string
    if number is >= 1
      word_count[item] = (number)
  return word_count
```

