# frozen_string_literal: true

# calculator class
class Calculator
  def add(*terms)
    terms.sum
  end

  def subtract(*terms)
    terms.inject { |diff, term| diff - term }
  end

  def multiply(*terms)
    terms.inject { |prod, term| prod * term }
  end

  def divide(*terms)
    terms.inject { |quot, term| quot / term }
  end
end
