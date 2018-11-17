require 'rspec'
require_relative '../lib/game.rb'

describe 'My behaviour' do

  it 'should create a board' do
    @game = Game.new([[0,0][0,0]])

    expect(@game.board).equal?([[0,0][0,0]])
  end
end