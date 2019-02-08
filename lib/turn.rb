def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end  


def position_taken?(board, index)
  if (board[index] == "X" || board[index] == "O")
    true
  elsif (board[index] == "" || board[index] == " " || board[index] == "  ")
    false
  end  
end  


def valid_move?(board, index)
  if (index < 0 || index > 9)
    false
  elsif position_taken?(board, index) == true
    false
  elsif position_taken?(board, index) == false
    true
  end
end  


def input_to_index(input)
  index = (input.to_i) - 1
end


def move(board, index, token = "X")
  board[index] = token
  puts token
end  

def turn 
  
end  






board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
move(board, 0, "O")
move(board, 8, "X")
puts display_board(board)