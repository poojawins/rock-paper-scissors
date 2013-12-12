
class Throw

  attr_reader :user_move
  attr_accessor :comp_move

  def initialize(user_move)
    comp_move = ["rock", "paper", "scissor"].sample
    @comp_move = comp_move
  end

  def who_wins

  winner_hash = {
    :rock => {:rock=> "tie", :paper=> "lose", :scissors=> "win"},
    :paper => {:rock=> "win", :paper=> "tie", :scissors=> "lose"},
    :scissors => {:rock=> "lose", :paper=> "win", :scissors=> "tie"}
  }

  winner_hash.each do |user, comp_hash|
    comp_hash.each do |comp, win_lose|
      if user_move == user
        if @comp_move == comp
          win_lose
        end
      end

  end

end

