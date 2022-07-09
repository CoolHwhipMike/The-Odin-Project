# frozen_string_literal: true

require './cipher_rewrite'

describe Cipher do
  describe '#initialize' do
    it 'sets the phrase' do
      cipher = Cipher.new('abc', 3)
      expect(cipher.phrase).to eql('abc')
    end

    it 'also sets the shift' do
      cipher = Cipher.new('abc', 3)
      expect(cipher.shift).to eql(3)
    end
  end

  describe '#do_shift' do
    it 'shifts a small amount forwards' do
      cipher = Cipher.new('def', 3)
      expect(cipher.do_shift).to eql('ghi')
    end

    it 'shifts a small amount backwards' do
      cipher = Cipher.new('def', -3)
      expect(cipher.do_shift).to eql('abc')
    end

    it 'shifts a large amount forwards' do
      cipher = Cipher.new('abc', 27)
      expect(cipher.do_shift).to eql('bcd')
    end

    it 'shifts a large amount backwards' do
      cipher = Cipher.new('bcd', -27)
      expect(cipher.do_shift).to eql('abc')
    end

    it 'ignores puctuation and spaces' do
      cipher = Cipher.new('abc def!@', 3)
      expect(cipher.do_shift).to eql('def ghi!@')
    end
  end
end
