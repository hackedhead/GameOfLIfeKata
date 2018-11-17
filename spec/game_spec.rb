require 'rspec'
require_relative '../lib/board'

describe 'Board' do

  it 'should create a board' do
    @board = Board.new

    expect(@board).to_not be_nil
  end
end