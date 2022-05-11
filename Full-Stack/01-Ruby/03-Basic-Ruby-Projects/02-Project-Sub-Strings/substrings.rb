# frozen_string_literal: true

dictionary_words = %w[below down go going horn how howdy it i low own part partner sit]

# This is my solution. It took several hours due to an incorrect approach.
# I first tried the same nested loop but adding to the value in the hash
# rather than adding to a counter. Then I thought about reduce. However,
# reduce only seems to work if you add every checked value without the count.positive? conditional.

def substrings(phrase, dictionary)
  result = {}
  new_phrase = phrase.downcase.gsub(/[^a-z\s]/, '').split

  dictionary.each do |check|
    count = 0
    new_phrase.each do |word|
      count += 1 if word.include?(check)
      result[check] = count if count.positive?
    end
  end
  result
end

# I found this solution on Github by rlmoser99. I does the same thing but seems
# easier and harder at the same time.

# def substrings(string, dictionary)
#   matches = {}
#   dictionary.each do |word|
#     matches[word] = string.downcase.scan(/(?=#{word})/).count if string.downcase.include?(word)
#   end
#   matches
# end

puts substrings('below', dictionary_words)
puts substrings("Howdy partner, sit down! How's it going?", dictionary_words)
