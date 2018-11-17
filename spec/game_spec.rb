require 'rspec'
require_relative '../lib/game.rb'

describe 'My behaviour' do

  it 'should create a board' do
    @game = Game.new([[0,0],[0,0]])

    expect(@game.board).equal?([[0,0],[0,0]])
  end

  it 'should check adjacent' do
    @game = Game.new([[0,0,0],[0,0,0]])

    temp = @game.check_neighbor(0, 1)
    expect(temp).to be(0)
  end
end