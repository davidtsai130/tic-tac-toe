class Rules

def self.valid_move?(move, board)
  board.comp[move - 1] == " " ? true : false
end

def self.won?(board)
  winning =[[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]]
  winning.each do |array|
    if board.comp[array[0]] == board.comp[array[1]] && board.comp[array[0]] == board.comp[array[2]] && board.comp[array[2]]!=" "
      return true
    end
  end
end

def self.draw?(board)
  board.comp.include?(" ")? true : false
end


end