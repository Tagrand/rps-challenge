require_relative "player"

class Game
  def self.create(player_1)
    @running ||= Game.new(player_1)
  end

  def self.current
    @running
  end

  attr_reader :player_1, :player_2

  def initialize(player_1, player_2 = Computer.new)
    @player_1 = player_1
    @player_2 = player_2
  end

  def winner
    return "draw" if player_1.choice == player_2.choice
    results = { "rock" => "paper", "paper" => "scissors", "scissors" => "rock" }
    results[player_1.choice] == player_2.choice ? "lose" : "win"
  end

end
