def substrings(string, dictionary)
  dictionary.reduce({}) do |word_count, word|
    count = string.scan(/#{word}/i).count
    word_count[word] = count if count >= 1
    word_count
  end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
puts substrings("Why go down below the low bow when it always makes you feel so low?", dictionary)