class Game < ActiveRecord::Base
  belongs_to :black_card
  has_many :games_players
  has_many :players, :through => :games_players
  has_many :players_cards
  has_many :white_cards, :through => :players_cards
  # self.has_many(:players, { :through => :games_players })
end