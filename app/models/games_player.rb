class GamesPlayer < ActiveRecord::Base
  belongs_to :game
  belongs_to :player
  has_many :players_cards
end