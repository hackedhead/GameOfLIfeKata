class Life
    attr_reader :board

    def initialize(board)
        @board = board
    end
    def cycle
        @board
    end
    def check_cell(row, col)
        count = count_horizontal(row, col) + count_vertical(row, col) + count_top_diagonal(row, col) + count_bottom_diagonal(row, col)
        if @board[row][col] == 1
            count < 2 ? false : (count > 3 ? false : true)
        else
            count == 3 ? true : false
        end
    end

    def count_horizontal(row, col)
        count = 0
        if @board[row][col-1] == 1
            count += 1
        end
        if @board[row][col+1] == 1
            count += 1
        end
        count
    end
    def count_vertical(row, col)
        count = 0
        if @board[row-1][col] == 1
            count += 1
        end
        if @board[row+1][col] == 1
            count += 1
        end
        count
    end
    def count_top_diagonal(row, col)
        count = 0
        if @board[row-1][col-1] == 1
            count += 1
        end
        if @board[row-1][col+1] == 1
            count += 1
        end
        count
    end
    def count_bottom_diagonal(row, col)
        count = 0
        if @board[row+1][col-1] == 1
            count += 1
        end
        if @board[row+1][col+1] == 1
            count += 1
        end
        count
    end
end

