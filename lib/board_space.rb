require_relative "board"
require_relative "player"
require 'pry'
class BoardSpace
  attr_accessor :spot, :player

  def initialize(spot = nil)
    @spot = spot
  end

  def printspace
    if @spot
      "#{@spot} "
    else
      "  "
    end
  end

  def occupied?
    !@spot.nil?
  end


end
