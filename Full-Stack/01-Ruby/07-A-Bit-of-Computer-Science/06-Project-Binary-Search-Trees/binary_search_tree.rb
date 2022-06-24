# frozen_string_literal: true

require_relative 'lib/node'
require_relative 'lib/tree'

# test_arr = [1, 7, 4, 23, 8, 9, 4, 3, 5, 7, 9, 67, 6345, 324]
test_arr = [20, 30, 50, 70, 80, 85, 75, 60, 65, 40, 32, 34, 38]

# t = Tree.new((Array.new(15) { rand(1..100) }))
t = Tree.new(test_arr)
t.pretty_print
# t.level_order { |item| puts item.data }
# t.level_order { |queue| queue.each { |item| puts item.data } }
