def substrings(string, dictionary)
  dictionary.each_with_object({}) do |word, word_count|
    count = string.scan(/#{word}/i).count
    word_count[word] = count if count >= 1
  end
end
