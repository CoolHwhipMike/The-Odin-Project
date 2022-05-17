# frozen_string_literal: true

def generate_code
  colors = %w[r g y b m c]
  code = []

  4.times { code.push(colors.sample) }
  code
end

def check_guess
  current_code = generate_code
  current_guess = []
  rounds = 12
  ##################################### this works but is junk
  4.times { current_guess.push(gets.chomp) }

  p current_code
  p current_guess
  while rounds.positive?

    break if current_guess == current_code

    current_guess.each_with_index do |element, index|
      if element == current_code[index]
        puts 'correct'
      elsif current_code.any?(element)
        puts 'wrong position'
      else
        puts 'wrong'
      end
    end

    current_guess.clear
    4.times { current_guess.push(gets.chomp) }
    rounds -= 1

  end
end

check_guess
