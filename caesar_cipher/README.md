# Caesar Cipher

### Assignment

Implement a caesar cipher that takes in a string and the shift factor and then outputs the modified string:

```ruby
  > caesar_cipher("What a string!", 5)
  => "Bmfy f xywnsl!"
```

*Update:* Added rspec tests.

### Thoughts

Since these projects directly follow the sections on pseudocode and problem solving, I thought I should go through the steps of actually writing them down. It was somewhat tedious to do, but I think my end result was slightly more elegant as a result. The function translates upper and lowercase letters and numbers, while ignoring symbols.

### Plan

Take a string and shift factor from user. For each character, check if it is uppercase, lowercase, a number, or something else, in which case leave it as is. Using the appropriate ASCII range, add  the shift factor to the character's ASCII value, wrapping left or right as necessary.

### Pseudocode

```pseudocode
For each char in string:
  if char is a letter:
    ASCII min = 65
    ASCII max = 90
    if a lowercase letter:
      ASCII min = min + 32
      ASCII max = max + 32
    new_character = char + shift
    while(new_character > max)
      new_character = new_character - 26
    while(new_character < min)
      new_character = new_character + 26
  else if char is a number:
    ASCII min = 48
    ASCII max = 57
    new_character = char + shift
    while(new_character < min)
      new_character = new_character + 10
    while(new_character > max)
      new_character = new_character - 10
  else
    leave character unchanged
```

