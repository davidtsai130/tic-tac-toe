class Board

	attr_accessor :comp

	def initialize
		@comp = []
		9.times { @comp << " " }		
	end

	def display
		puts "#{self.comp[0]} | #{self.comp[1]} | #{self.comp[2]}"
		puts "----------"
		puts "#{self.comp[3]} | #{self.comp[4]} | #{self.comp[5]}"
		puts "----------"
		puts "#{self.comp[6]} | #{self.comp[7]} | #{self.comp[8]}"
		puts "   "
	end
end

