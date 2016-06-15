class Game

	attr_accessor :board, :move, :player, :computer
	attr_reader :name 

	# def initialize
	# 	@stats = {wins: 0, losses: 0}
	# end

	def play_game(player, computer, board)
		@board = board
		@player = player
		@computer = computer
		@board.display
		self.play_until
	end

	def play_until
		until Rules.won?(@board) == true
			@move = 0
			player_turn 
			puts "#{player.name}'s move"
			@board.display
			if Rules.won?(@board) != true
			 	computer_turn 
			 	puts "Computer's move"
			 	@board.display
			end
		end
	end

	def player_turn
    until (@move >= 1 && @move <= 9) && Rules.valid_move?(@move, @board) == true
      puts "Please choose a number between 1 - 9" 
      @move = gets.chomp.to_i
    end
      @board.comp[@move - 1] = player.symbol
	end

	def computer_turn
		avail_spots = @board.comp.each_with_index.map do |elem, index|
			if elem == " "
				index
			end
		end
		computer_move = avail_spots.compact.sample
    @board.comp[computer_move] = computer.computer_symbol
	end


end