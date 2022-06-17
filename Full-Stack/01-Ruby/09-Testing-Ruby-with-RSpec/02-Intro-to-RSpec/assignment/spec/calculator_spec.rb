# frozen_string_literal: true

require './lib/calculator'

describe Calculator do
  describe '#add' do
    it 'returns the sum of two numbers' do
      calculator = Calculator.new
      expect(calculator.add(5, 2)).to eql(7)
    end

    it 'returns the sum of more than two numbers' do
      calculator = Calculator.new
      expect(calculator.add(2, 5, 7)).to eql(14)
    end
  end

  describe '#subtract' do
    it 'returns the difference of two numbers' do
      calculator = Calculator.new
      expect(calculator.subtract(5, 2)).to eql(3)
    end

    it 'returns the difference of more than two numbers' do
      calculator = Calculator.new
      expect(calculator.subtract(10, 3, 2)).to eql(5)
    end
  end

  describe '#multiply' do
    it 'returns the product of two numbers' do
      calculator = Calculator.new
      expect(calculator.multiply(2, 3)).to eql(6)
    end

    it 'returns the product of more than two numbers' do
      calculator = Calculator.new
      expect(calculator.multiply(2, 4, 5)).to eql(40)
    end
  end

  describe 'divide' do
    it 'returns the quotient' do
      calculator = Calculator.new
      expect(calculator.divide(15, 3)).to eql(5)
    end

    it 'returns the quotient of more than two numbers' do
      calculator = Calculator.new
      expect(calculator.divide(50, 5, 2)).to eql(5)
    end
  end
end
