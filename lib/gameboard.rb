require 'byebug'

class Gameboard

  def initialize
    @board = nil
  end

  def generate_new_board(input_array)
    board_width = Math.sqrt(input_array.length).to_int
    # puts(board_width)
    @board = Array.new(board_width){Array.new(board_width, 0)}
    @next_board = Array.new(board_width){Array.new(board_width, 0)}
    # puts(@board)
    # puts(input_array)

    for x in 0..board_width-1 do
      for y in 0..board_width-1 do
        puts("board = #{@board[x][y]}")
        puts("array = #{input_array[x*board_width+y]}")
        @board[x][y] = input_array[x*board_width+y]
      end
    end

    for x in 0..board_width-1 do
      for y in 0..board_width-1 do
        #byebug
        live_count = check_neighbors(@board, x, y)
        if @board[x][y] == 0
          if live_count == 3
            @next_board[x][y] = 1
          end
        else
          if live_count < 2
            @next_board[x][y] = 0
          elsif live_count <= 3
            @next_board[x][y] = 1
          else
            @next_board[x][y] = 0
          end
        end
      end
    end



    @next_board
  end

  def check_neighbors(board, x, y)
    #byebug
    live_neighbors = 0

    for cx in x-1..x+1 do
      if x == 0
        for cy in y..y+1 do
          live_neighbors += board[cx][cy]

          # begin
          #   puts("#{cx}, #{cy}")
          #   puts("hit begin")
          #
          # rescue
          #   puts("hit rescue")
          #   live_neighbors += 0
          # end
        end
      else
        for cy in y-1..y+1 do

        end
      end
    end

    live_neighbors
  end
end