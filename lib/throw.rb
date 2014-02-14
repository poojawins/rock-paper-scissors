class Throw

  attr_reader :user_move
  attr_accessor :comp_move, :winner

  def initialize(user_move)
    @user_move = user_move
    @comp_move = ["rock", "paper", "scissors", "lizard", "spock"].sample
  end

  def computer_move
    return @comp_move
  end

  def who_wins
    winner = nil
    winner_hash = {
      :rock => {:rock=> "tie", :paper=> "lose", :scissors=> "win", :lizard=> "win", :spock=> "lose"},
      :paper => {:rock=> "win", :paper=> "tie", :scissors=> "lose", :lizard=> "lose", :spock=> "win"},
      :scissors => {:rock=> "lose", :paper=> "win", :scissors=> "tie", :lizard=> "win", :spock=> "lose"},
      :lizard => {:rock=> "lose", :paper=> "win", :scissors=> "lose", :lizard=> "tie", :spock=> "win"},
      :spock => {:rock=> "win", :paper=> "lose", :scissors=> "win", :lizard=> "lose", :spock=> "tie"}
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

