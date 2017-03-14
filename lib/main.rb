require 'pry'
require_relative "Board"
require_relative "board_space"
require_relative "player"

board = Board.new

player1 = Player.new("x")
player2 = Player.new("o")

puts "Welcome to Connect 4!"
puts "Player 1, What is your name?:"
name1 = gets.chomp
player1.name = name1
puts "Player 2, What is your name?:"
name2 = gets.chomp
player2.name = name2
puts board.printboard

player = [player1, player2].shuffle
turn_index = 0

 while board.empty?  && board.winner? == false
   current_player = player[turn_index]
   puts "It is #{current_player.name}'s turn."
   puts "What column do you want to play?"
   place_space = gets.chomp.to_i
  #  binding.pry
   board.add_turn(current_player.player, place_space)
   puts board.printboard
   turn_index = turn_index == 0 ? 1 : 0


 end
