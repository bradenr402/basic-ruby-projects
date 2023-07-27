def substrings(text, dictionary)
  text = text.downcase
  result = Hash.new(0)

  dictionary.each { |word| result[word] = text.scan(word).count if text.include?(word) }
  return result
end

dictionary = ['below','down','go','going','horn','how','howdy','it','i','low','own','part','partner','sit']
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
