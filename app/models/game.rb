class Game < ActiveRecord::Base
  belongs_to :black_card
  has_many :players :through, :games_players
  
end