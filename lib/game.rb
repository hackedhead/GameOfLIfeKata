class Game

  attr_reader :board

  def initialize(board)
    @board = board
  end

  def check_up_down(row, col)
    live_count = 0

    if row != 0
      live_count += @board[row-1][col]
    end
    if row < board[0].length
      live_count += @board[row+1][col]
    end
    live_count
  end

  def check_left_right(row, col)
    live_count = 0

    if col != 0
      live_count += @board[row][col-1]
    end
    if col < board[0].length
      live_count += @board[row][col+1]
    end
    live_count
  end

  def check_top_diagonals(row, col)
    live_count = 0

    if col != 0
      live_count += @board[row+1][col-1]
    end
    if col < board[0].length
      live_count += @board[row+1][col+1]
    end
    live_count
  end
end