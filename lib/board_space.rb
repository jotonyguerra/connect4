require_relative "player"
class BoardSpace
  attr_accessor :spot

  def initialize(spot = nil)
    @spot = spot
  end

  def printspace
    if @spot
      " #{@spot.player} "
    else
      "  "
    end
  end

  def occupied?
    !@player.nil?
  end


  # def empty?
  #   if mark.spot.nil?
  #     return true
  #   else
  #     return false
  #   end
  # end


end
