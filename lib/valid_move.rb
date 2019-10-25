# code your #valid_move? method here
# return true if the index value is equal to an array 1-9
# use position_taken method to check a space is not already filled
def valid_move?(array, index)
  if index.between?(0,8) && !position_taken?(array, index)
    return true
  else position_taken?(array, index) == true
    return false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.

def position_taken?(array, index)
  if array[index] == " " || array[index] == "" || array[index] == nil
    return false
  elsif array[index] == "X" || array[index] == "O"
    return true
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
