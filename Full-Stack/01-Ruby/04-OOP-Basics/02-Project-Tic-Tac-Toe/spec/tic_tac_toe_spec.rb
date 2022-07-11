# frozen_string_literal: true

require_relative '../lib/game'
require_relative '../lib/board'
require_relative '../lib/player'

describe Board do
  subject(:board) { described_class.new }

  describe '#generate_board' do
    it 'correctly generates board data' do
      expect(board.data['1']).to eq(1)
      expect(board.data['5']).to eq(5)
      expect(board.data['9']).to eq(9)
    end
  end

  describe '#update_board' do
    it 'changes @data[1] from 1 to x' do
      board.update_board('1', 'x')
      expect(board.data['1']).to eq('x')
    end

    it 'changes @data[5] from 5 to x' do
      board.update_board('5', 'x')
      expect(board.data['5']).to eq('x')
    end

    it 'changes @data[9] from 9 to x' do
      board.update_board('9', 'x')
      expect(board.data['9']).to eq('x')
    end
  end
end

describe Game do
  describe '#check_row' do
    subject(:winning_game) { described_class.new }

    before do
      winning_game.instance_variable_get(:@game).update_board('1', 'x')
      winning_game.instance_variable_get(:@game).update_board('2', 'x')
      winning_game.instance_variable_get(:@game).update_board('3', 'x')
    end

    it 'detects a win and returns true' do
      expect(winning_game.check_row(winning_game)).to be true
    end
  end

  describe '#check_column' do
    subject(:winning_game) { described_class.new }

    before do
      winning_game.instance_variable_get(:@game).update_board('1', 'x')
      winning_game.instance_variable_get(:@game).update_board('4', 'x')
      winning_game.instance_variable_get(:@game).update_board('7', 'x')
    end

    it 'detects a win and returns true' do
      expect(winning_game.check_column(winning_game)).to be true
    end
  end

  describe '#check_diagonal' do
    subject(:winning_game) { described_class.new }

    before do
      winning_game.instance_variable_get(:@game).update_board('1', 'x')
      winning_game.instance_variable_get(:@game).update_board('5', 'x')
      winning_game.instance_variable_get(:@game).update_board('9', 'x')
    end

    it 'detects a win and returns true' do
      expect(winning_game.check_diagonal(winning_game)).to be true
    end
  end
end
