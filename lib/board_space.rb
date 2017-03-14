require_relative "board"
require_relative "player"

class BoardSpace
  attr_accessor :spot, :player

  def initialize(spot = nil)
    @spot = spot
  end

  def printspace
    #need to print a readable board then add player character following add turn 
    if @spot
      #how to get this to print out a readable board and then add player piece?
      " #{@spot.player} " #unless @player.nil?} "
    else
      "  "
    end
  end

  def occupied?
    !@player.nil?
  end


end
