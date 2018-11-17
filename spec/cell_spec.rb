require 'rspec'
require_relative '../lib/cell'

describe 'My behaviour' do

  it 'should create cell' do
    @cell = Cell.new

    expect(@cell).to_not be_nil
  end

  it 'should change state when toggled' do
    @cell = Cell.new
    expect(@cell.status).to be(Cell::DEAD)

    @cell.toggle
    expect(@cell.status).to be(Cell::LIVE)
  end
end