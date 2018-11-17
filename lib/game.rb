class Game

  attr_reader :board

  def initialize(board)
    @board = board
  end

  def check_up_down(x, y)
    live_count = 0

    if x != 0
      live_count += @board[x+1][y]
    end
    if x < board[0].length
      live_count += @board[x-1][y]
    end
    live_count
  end

  def check_left_right(x, y)
    live_count = 0

    if y != 0
      live_count += @board[x][y-1]
    end
    if y < board[0].length
      live_count += @board[x][y+1]
    end
    live_count
  end
end