require_relative "Board"
require "colorize"
require "Cursor"

class Display

    def initialize(board)
      @cursor = Cursor.new([0,0], board)
      @board = board
      
    end

end