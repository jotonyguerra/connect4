require_relative "board"
require_relative "player"
require 'pry'
class BoardSpace
  attr_accessor :spot, :player

  def initialize(spot = nil)
    @spot = spot
  end

  def printspace
    #need to print a readable board then add player character following add turn
    if @spot
      # binding.pry
      if @spot == nil
        " #{@spot} " #unless @player.nil?} "
      else
        "#{@spot} "
      end
    else
      "  "
    end
  end

  def occupied?
    !@player.nil?
  end


end
