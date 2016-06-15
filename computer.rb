class Computer

attr_accessor :computer_symbol, :symbol

  def initialize(player)
    player.symbol == "X" ? @computer_symbol = "O" : @computer_symbol = "X"
  end

end