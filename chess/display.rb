require 'colorize'
require_relative "cursor"
require_relative "board"

class Display

attr_reader :cursor, :board

def initialize(board)
  @board = board
  @cursor = Cursor.new([0,0], board)
end

def render

  board.grid.each_with_index do |row, idx|
    row.each_with_index do |el, el_idx|
      if el_idx.even? 
        #do something
      else
        #do something else
      end
    end
  end
end

def colorize
  colorized = []
  
  @board.grid.each_with_index do |row, row_idx|
    colorized_row = []

    row.each_with_index do |el, el_idx|
      piece = "| K |" # el.type.to_s

      if el_idx.even? && row_idx.even?
        # el.type is an instance var in Piece class e.g., ":k"
        colorized_row << piece.colorize(:color => :black, :background => :white)
      else
        colorized_row << piece.colorize(:color => :white, :background => :black)
      end
      # if both row & el == even || both row & el == odd || the rest

    end
    colorized << colorized_row
  end

  puts colorized
end

end