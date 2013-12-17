class PlayersCard < ActiveRecord::Base
  belongs_to :white_card
  belongs_to :player
  belongs_to :game
  has_many :votes
end

# PlayersCard.where(player: some_player, game: some_game).map { |pc| pc.white_card }