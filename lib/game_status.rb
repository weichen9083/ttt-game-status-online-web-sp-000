
# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [[0,1,2],
                    [3,4,5],
                    [6,7,8],
                    [0,3,6],
                    [1,4,7],
                    [2,5,8],
                    [0,4,8],
                    [2,4,6]]
                    
  def won?(board)
    WIN_COMBINATIONS.each do |win_conbination|
      postion_1 = board[win_conbination[0]]
      postion_2 = board[win_conbination[1]]
      postion_3 = board[win_conbination[2]]
    if postion_1 == "X" && postion_2 == "X" && postion_3 == "X" || postion_1 == "O" && postion_2 == "O" && postion_3 == "O"
      return win_conbination
    end 
  end 
      false 
  end 
  
  def full?(board)
    board.all?{|x| x == "X" || x == "O"}
  end 
  
  def draw?(board)
    if won?(board) == false && full?(board) 
      true 
    else 
      false
    end 
  end 
  
  def over?(board)
    if won?(board) || draw?(board) 
      true
    else 
      false
    end 
  end 
  
  def winner(board)
    if won?(board) 
    x = won?(board)
    board[x[0]]
  else 
    nil
  end 
  end 
      
  
