# frozen_string_literal: true

# Module containing the save and load logic
module SaveLoad
  def save_game
    contents = MessagePack.dump({
                                  secret_word: @secret_word,
                                  hits: @hits,
                                  misses: @misses
                                })
    file = File.open('save_file', 'w')
    file.write contents
    file.close
  end

  def load_game
    file = File.open('save_file', 'r')
    contents = MessagePack.unpack(file)
    @secret_word = contents['secret_word']
    @hits = contents['hits']
    @misses = contents['misses']
    play_game
  end
end
