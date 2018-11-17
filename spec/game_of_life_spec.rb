#require 'rspec'
require_relative '../../lib/game_cell'

describe 'GameCell' do

  context 'live cells' do
    xit 'should die if fewer than two neighbors'
    xit 'should stay alive with two to three neighbors'
    xit 'should die if more than three neighbors'
  end

  context 'dead cells' do
    xit 'should be born with exactly three neighbors'
    xit 'should stay dead with not three neighbors'
  end
end