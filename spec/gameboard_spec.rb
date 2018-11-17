require 'rspec'
require_relative '../lib/gameboard'

describe 'Gameboard' do

  before :each do
    @gameboard = Gameboard.new
  end

  it 'return the correct board' do
    input_array = [0, 1, 1, 1]

    output_array = @gameboard.generate_new_board(input_array)

    expected_output = [[1, 1], [1, 1]]

    expect(output_array).to be(expected_output)

  end
end