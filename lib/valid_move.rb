# def display_board(board)
#   puts " #{board[0]} | #{board[1]} | #{board[2]} "
#   puts "-----------"
#   puts " #{board[3]} | #{board[4]} | #{board[5]} "
#   puts "-----------"
#   puts " #{board[6]} | #{board[7]} | #{board[8]} "
# end
#
# # code your input_to_index
#   def input_to_index(input)
#     # convert input to integer and subtracts 1
#     input.to_i - 1
#   end
#
# # # code the move method here!
#   def move(array, index, character = "X")
#     array[index] = character
#   end


# code your #valid_move? method here
# return true if the index value is equal to an array 1-9
# use position_taken method to check a space is not already filled
def valid_move?(array, index)
  if position_taken?(array, index) == false
    return true
  elsif position_taken?(array, index) == true
    return false
  else valid_move?(array, index).between?(0, 8)
    return false
  end
end



# def valid_move?(array, index)
#   if position_taken?(array, index) == false
#     return true
#   elsif position_taken?(array, index) == true
#     return false
#   else valid_move?(array, index).between?(0, 8)
#     return false
#   end
# end


# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.

def position_taken?(array, index)
  if array[index] == " " || array[index] == "" || array[index] == nil
    return false
  elsif array[index] == "X" || array[index] == "O"
    return true
  end
end
