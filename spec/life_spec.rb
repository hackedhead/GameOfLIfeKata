require 'rspec'
require_relative '../lib/life'

describe 'life' do
    it 'should kill a live cell with fewer than two neighbors' do
        @life = Life.new([[0,0,0],[0,1,0],[0,0,0]])
        expect(@life.check_cell(1,1)).to be false
    end

    it 'should not kill a live cell with two neighbors' do
        @life = Life.new([[0,0,1],[0,1,0],[1,0,0]])
        expect(@life.check_cell(1,1)).to be true
    end
    it 'should not kill a live cell with three neighbors' do
        @life = Life.new([[0,0,1],[0,1,0],[1,0,1]])
        expect(@life.check_cell(1,1)).to be true
    end

    it 'should return zero of horizontal neighbors' do
        @life = Life.new([[0,0,0],[0,0,0],[0,0,0]])
        expect(@life.count_horizontal(1,1)).to eq(0)
    end
    it 'should return one (left) of horizontal neighbors' do
        @life = Life.new([[0,0,0],[1,0,0],[0,0,0]])
        expect(@life.count_horizontal(1,1)).to eq(1)
    end
    it 'should return one (right) horizontal neighbors' do
        @life = Life.new([[0,0,0],[0,0,1],[0,0,0]])
        expect(@life.count_horizontal(1,1)).to eq(1)
    end
    it 'should return two (both) horizontal neighbors' do
        @life = Life.new([[0,0,0],[1,0,1],[0,0,0]])
        expect(@life.count_horizontal(1,1)).to eq(2)
    end
    it 'should return zero of vertical neighbors' do
        @life = Life.new([[0,0,0],[0,0,0],[0,0,0]])
        expect(@life.count_vertical(1,1)).to eq(0)
    end
    it 'should return one (top) of vertical neighbors' do
        @life = Life.new([[0,1,0],[0,0,0],[0,0,0]])
        expect(@life.count_vertical(1,1)).to eq(1)
    end
    it 'should return one (bottom) vertical neighbors' do
        @life = Life.new([[0,0,0],[0,0,0],[0,1,0]])
        expect(@life.count_vertical(1,1)).to eq(1)
    end
    it 'should return two (both) vertical neighbors' do
        @life = Life.new([[0,1,0],[0,0,0],[0,1,0]])
        expect(@life.count_vertical(1,1)).to eq(2)
    end
    it 'should return zero of top diagonal neighbors' do
        @life = Life.new([[0,0,0],[0,0,0],[0,0,0]])
        expect(@life.count_top_diagonal(1,1)).to eq(0)
    end
    it 'should return one (left) of top_diagonal neighbors' do
        @life = Life.new([[1,0,0],[0,0,0],[0,0,0]])
        expect(@life.count_top_diagonal(1,1)).to eq(1)
    end
    it 'should return one (right) top_diagonal neighbors' do
        @life = Life.new([[0,0,1],[0,0,0],[0,0,0]])
        expect(@life.count_top_diagonal(1,1)).to eq(1)
    end
    it 'should return two (both) top_diagonal neighbors' do
        @life = Life.new([[1,0,1],[0,0,0],[0,0,0]])
        expect(@life.count_top_diagonal(1,1)).to eq(2)
    end
    it 'should return zero of bottom diagonal neighbors' do
        @life = Life.new([[0,0,0],[0,0,0],[0,0,0]])
        expect(@life.count_bottom_diagonal(1,1)).to eq(0)
    end
    it 'should return one (left) of bottom_diagonal neighbors' do
        @life = Life.new([[0,0,0],[0,0,0],[1,0,0]])
        expect(@life.count_bottom_diagonal(1,1)).to eq(1)
    end
    it 'should return one (right) bottom_diagonal neighbors' do
        @life = Life.new([[0,0,0],[0,0,0],[0,0,1]])
        expect(@life.count_bottom_diagonal(1,1)).to eq(1)
    end
    it 'should return two (both) bottom_diagonal neighbors' do
        @life = Life.new([[0,0,0],[0,0,0],[1,0,1]])
        expect(@life.count_bottom_diagonal(1,1)).to eq(2)
    end
    
    
end
