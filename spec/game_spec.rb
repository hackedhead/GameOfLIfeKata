require 'rspec'

describe 'My behaviour' do

  it 'should have a board' do
    @board = Board.new(3,3)
    @game = Game.new(@board)


  end
end