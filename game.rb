class Game

	attr_accessor :board, :move, :player, :computer, :last_move
	attr_reader :name 

	def play_game(player, computer, board)
		@board = board
		@player = player
		@computer = computer
		@board.display
		self.play_until
	end

	def play_until
		loop do
			break if Rules.won?(@board) == true || Rules.filled?(@board) == true
				self.player_move
		 	break if Rules.won?(@board) == true || Rules.filled?(@board) == true
		 		self.computer_move
		end
		self.game_over
	end

	def player_move
		@move = 0
		self.player_turn 
		puts "#{player.name}'s move"
		@board.display
		@last_move = player.symbol
	end

	def computer_move
		self.computer_turn 
		puts "Computer's move"
		@board.display
		@last_move = computer.computer_symbol
	end

	def game_over
		if Rules.filled?(@board) == true && Rules.won?(@board) != true
			self.draw?
		elsif Rules.won?(@board) == true 
			self.show_winner
		end
	end

	def draw?
		puts "It's a draw"
			player.stats[:ties] += 1
			puts player.stats
	end
		
	def show_winner	
		if @last_move == player.symbol
		puts "#{player.name} is the winner"
		player.stats[:wins] += 1
		else
		puts "Computer is the winner"
		player.stats[:losses] += 1
		end
		puts player.stats
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
			index if elem == " "
		end
		computer_move = avail_spots.compact.sample
    @board.comp[computer_move] = computer.computer_symbol
	end

	def self.continue?
		puts "Would you like to play again? Please enter yes or no"
		answer = gets.chomp.upcase
		answer == "YES"? true : false
	end

end