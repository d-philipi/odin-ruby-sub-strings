def sub_strings(string, dictionary)
  string.downcase!
  dictionary.reduce(Hash.new) do |result, word|
    if string.scan(word).count > 0
      result[word] = string.scan(word).count
    end
    result
  end
end