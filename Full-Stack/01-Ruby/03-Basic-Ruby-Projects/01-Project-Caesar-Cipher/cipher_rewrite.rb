# frozen_string_literal: true

# Wrap methods in a class
class Cipher
  attr_reader :phrase, :shift

  def initialize(phrase, shift)
    @phrase = phrase
    @shift = shift
  end

  def do_shift
    @shifted_string_array = []

    @phrase.bytes.each do |element|
      if element >= 65 && element <= 90
        element += @shift
        element = 65 + (element - 91) if element > 90
        element = 90 + (element - 64) if element < 65
      end

      if element >= 97 && element <= 122
        element += @shift
        element = 97 + (element - 123) if element > 122
        element = 122 + (element - 96) if element < 97
      end

      @shifted_string_array.push(element.chr)
    end
    @shifted_string_array.join('')
  end
end

test = Cipher.new('abc', 2)
puts test.do_shift
