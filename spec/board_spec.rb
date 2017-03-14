require 'spec_helper'
require_relative "../lib/Board.rb"

describe Board do

  it 'can be initialized with 10 rows and columns' do
  board = Board.new
  expect(board.rows.size).to eq(10)
  expect(board.rows[0].size).to eq(10)
  end


  # end
end
