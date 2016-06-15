game = Game.new
player = Player.new
rules= Rules.new
computer = Computer.new(player)
board = Board.new
game.play_game(player, computer, board)
