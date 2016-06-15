class Player

  attr_accessor :symbol, :name

	def initialize
		puts "Welcome to tic-tac-toe!  What is your name?"
		@name = gets.chomp
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