def caesar_cipher(string, shift)
  string.chars.map do |char|
    if(/[[:alpha:]]/.match(char))
      min = 65
      max = 90
      if(/[[:lower:]]/.match(char))
        min += 32
        max += 32
      end
      char = char.ord + shift
      char += 26 while char < min
      char -= 26 while char > max
    elsif(/\d/.match(char))
      min = 48
      max = 57
      char = char.ord + shift
      char += 10 while char < min
      char -= 10 while char > max
    else
      next(char)
    end
    char = char.chr
  end.join
end
