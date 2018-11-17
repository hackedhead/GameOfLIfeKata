require 'rspec'
require_relative '../lib/game.rb'

describe 'My behaviour' do

  context 'board setup' do
    before :each do
      @board_array = [[0,1,0],[0,0,0],[0,1,0]]
      @game = Game.new(@board_array)
    end

    it 'should create a board' do
      expect(@game.board).equal?(@board_array)
    end

    it 'should check adjacent' do
      temp = @game.check_neighbor(1, 0)
      expect(temp).to be(0)
    end

    it 'should get correct counts of adjacent' do
      temp = @game.check_neighbor(1, 1)
      expect(temp).to be(2)
    end
  end

end