require 'rspec'
require_relative '../lib/board'

describe 'Board' do

  it 'should create a board' do
    @board = Board.new(1,1)

    expect(@board).to_not be_nil
  end

  it 'should have cells' do
    @board = Board.new(1,1)

    expect(@board.check_cell(0,0)).to be(Cell::DEAD)
    expect{@board.check_cell(5,5)}.to raise_error(IndexError)
  end

  it 'should create a board with specific size' do
    @board = Board.new(2,3)

    expect(@board.width).to be(3)
    expect(@board.height).to be(2)
  end

  it 'should change cell state' do
    @board = Board.new(2, 3)

    expect(@board.check_cell(1,1)).to be(Cell::DEAD)

    @board.toggle_cell(1 ,1)

    expect(@board.check_cell(1,1)).to be(Cell::LIVE)
  end

  #xit 'should assign new value to board cells'
end