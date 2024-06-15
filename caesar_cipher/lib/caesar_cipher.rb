LOWERCASE_MIN = 97
LOWERCASE_MAX = 122
UPPERCASE_MIN = 65
UPPERCASE_MAX = 90
NUMBER_MIN = 48
NUMBER_MAX = 57

def caesar_cipher(string, shift)
  string.chars.map do |char|
    if /[[:alpha:]]/.match(char)
      shift_letter(char, shift)
    elsif /\d/.match(char)
      shift_number(char, shift)
    else
      next(char)
    end
  end.join
end

def shift_letter(char, shift)
  coded_char = char.ord + shift
  if /[[:lower:]]/.match(char)
    coded_char += 26 while coded_char < LOWERCASE_MIN
    coded_char -= 26 while coded_char > LOWERCASE_MAX
  else
    coded_char += 26 while coded_char < UPPERCASE_MIN
    coded_char -= 26 while coded_char > UPPERCASE_MAX
  end
  coded_char.chr
end

def shift_number(char, shift)
  coded_char = char.ord + shift
  coded_char += 10 while coded_char < NUMBER_MIN
  coded_char -= 10 while coded_char > NUMBER_MAX
  coded_char.chr
end
