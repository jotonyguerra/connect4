require_relative 'board_space'
require_relative 'player'

class Board
  attr_accessor :spot, :player

  def initialize(num_rows_and_columns = 10)
    @board = []
    num_rows_and_columns.times do
      row = []
      num_rows_and_columns.times do
        row << BoardSpace.new
      end
      @board << row
    end
  end


  def printboard
    board_print = ""
    @board.each_with_index do |row, index|
      spots = []
      row.each do |space|
        spots << space.printspace
      end
      board_print << "|" + spots.join(" ") + "|\n"
    end
    board_print << "|_____________________________|" + "\n"
    board_print << "  0  1  2  3  4  5  6  7  8  9 "
    return board_print
  end

  def add_turn(player, col_index)
    if !@board[9][col_index].occupied?
      @board[9][col_index].spot = player
    elsif @board[9][col_index].occupied? && !@board[8][col_index].occupied?
      @board[8][col_index].spot = player
    elsif @board[8][col_index].occupied? && !@board[7][col_index].occupied?
        @board[7][col_index].spot = player
    elsif @board[7][col_index].occupied? && !@board[6][col_index].occupied?
        @board[6][col_index].spot = player
    elsif @board[6][col_index].occupied? && !@board[5][col_index].occupied?
        @board[5][col_index].spot = player
    elsif @board[5][col_index].occupied? && !@board[4][col_index].occupied?
        @board[4][col_index].spot = player
    elsif @board[4][col_index].occupied? && !@board[3][col_index].occupied?
        @board[3][col_index].spot = player
    elsif @board[3][col_index].occupied? && !@board[2][col_index].occupied?
        @board[2][col_index].spot = player
    elsif @board[2][col_index].occupied? && !@board[1][col_index].occupied?
        @board[1][col_index].spot = player
    elsif @board[0][col_index].occupied?
      puts "column is full please try a different column"
    else
        @board[0][col_index].spot = player
    end
  end


  def winner?
    #how to determine winner? verticle and horizon
    false

  end

end
#
# require 'pry'
# binding.pry
