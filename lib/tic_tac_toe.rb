class TicTacToe
  def initialize (board=nil)
    @board = Array.new(9," ")
  end

  WIN_COMBINATIONS = [
   [0,1,2], # Top row
   [3,4,5],  # Middle row
   [6,7,8],  # Bottom row
   [0,3,6],  # Left col
   [1,4,7],  # Middle col
   [2,5,8],  #Right col
   [0,4,8], #Diag Right
   [2,4,6] #diag left
 ]

 def current_player
     turn_count % 2 == 0 ? "X" : "O"
   end

   def turn_count
     @board.count{|token| token == "X" || token == "O"}
   end

   def display_board
     puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
     puts "-----------"
     puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
     puts "-----------"
     puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
   end

end
