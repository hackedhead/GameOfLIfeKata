class Board

  def initialize(width, height)
    # @width = width
    # @height = height

    @board = Array.new(width){Array.new(height, Cell.new)}
  end

  def width
    @board[0].length
  end

  def height
    @board.length
  end

  def check_cell(row, col)
    if row >= self.height || row < 0
      raise IndexError
    end
    if col >= self.width || col < 0
      raise IndexError
    end
    @board[row][col].status
  end

  def toggle_cell(row, col)
    @board[row][col].toggle
  end
end