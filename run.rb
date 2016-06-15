game = Game.new
player = Player.new
rules= Rules.new
computer = Computer.new(player)
board = Board.new
game.play_game(player, computer, board)

until Game.continue? == false
  game = Game.new
  rules= Rules.new
  board = Board.new  
  game.play_game(player, computer, board)
end

puts "Thanks for playing!"