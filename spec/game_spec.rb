require 'rspec'
require_relative '../lib/game.rb'

describe 'My behaviour' do

  context 'board setup' do
    before :each do
      @board_array = [[0,1,0],[1,0,1],[0,1,0]]
      @game = Game.new(@board_array)
    end

    it 'should create a board' do
      expect(@game.board).equal?(@board_array)
    end

    it 'should check up and down' do
      temp = @game.check_up_down(1, 1)
      expect(temp).to be(2)
    end

    it 'should get left and right' do
      temp = @game.check_left_right(1, 1)
      expect(temp).to be(2)
    end
  end

end