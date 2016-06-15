class Player

  attr_accessor :symbol, :name, :stats
  

	def initialize
		@stats = {wins: 0, losses: 0, ties: 0}
		puts "Welcome to Tic-Tac-Toe! What is your name?"
		@name = gets.chomp.capitalize
		puts "Hello, #{@name}."
		self.get_player_symbol
	end

	def get_player_symbol
			until @symbol == "X" || @symbol == "O"
	      puts "Choose X or O"
	      @symbol = gets.upcase.chomp
	    end
	  puts "Your symbol is #{@symbol}!"
	end

end