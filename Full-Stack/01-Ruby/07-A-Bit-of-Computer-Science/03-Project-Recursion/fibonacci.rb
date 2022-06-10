# frozen_string_literal: true

def fibs(number)
  f0 = 0
  f1 = 1
  result = [0, 1]

  (number - 2).times do
    fn = f1 + f0
    f0 = f1
    f1 = fn
    result.push(fn)
  end

  p result
end

fibs(8)

def fibs_rec(number, count = 2, f0 = 0, f1 = 1, fn = 1, result = [0, 1])
  return result if count == number

  fn = f1 + f0
  f0 = f1
  f1 = fn
  count += 1
  result.push(fn)
  fibs_rec(number, count, f0, f1, fn, result)
end

p fibs_rec(8)
