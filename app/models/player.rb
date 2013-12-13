class Player < ActiveRecord::Base
  has_many :games_players
  has_many :games, through: :games_players

  has_many :players_cards
  has_many :white_cards, through: :players_cards

  has_many :votes
end