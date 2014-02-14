class Throw

  attr_reader :user_move
  attr_accessor :comp_move, :winner

  def initialize(user_move)
    @user_move = user_move
    @comp_move = ["rock", "paper", "scissor"].sample
  end

  def who_wins
    winner = nil
    winner_hash = {
      :rock => {:rock=> "tie", :paper=> "lose", :scissors=> "win"},
      :paper => {:rock=> "win", :paper=> "tie", :scissors=> "lose"},
      :scissors => {:rock=> "lose", :paper=> "win", :scissors=> "tie"}
    }
    winner_hash.each do |user, comp_hash|
      if @user_move == user
        comp_hash.each do |comp, win_lose|
          if @comp_move == comp
            winner = winner_hash[user][comp]
          end
        end
      end
      return winner
    end
    
  end

end

