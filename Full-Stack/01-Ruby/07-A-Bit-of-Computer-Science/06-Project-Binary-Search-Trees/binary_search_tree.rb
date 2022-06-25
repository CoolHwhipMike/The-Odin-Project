# frozen_string_literal: true

require_relative 'lib/node'
require_relative 'lib/tree'

# test_arr = [1, 7, 4, 23, 8, 9, 4, 3, 5, 7, 9, 67, 6345, 324]
# test_arr = [20, 30, 50, 70, 80, 85, 75, 60, 65, 40, 32, 34, 38]

# t = Tree.new((Array.new(15) { rand(1..100) }))
# p t.balanced?
# t.level_order { |node| puts node.data }
# t.inorder { |node| puts node.data }
# t.preorder { |node| puts node.data }
# t.postorder { |node| puts node.data }

# t.insert(107)
# t.insert(115)
# t.insert(101)
# t.insert(109)
# p t.balanced?
# t.rebalance
# p t.balanced?
# t.level_order
# t.inorder { |node| puts node.data }
# t.preorder { |node| puts node.data }
# t.postorder { |node| puts node.data }
# t.pretty_print
