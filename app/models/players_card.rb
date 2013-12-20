class PlayersCard < ActiveRecord::Base
  belongs_to :white_card
  belongs_to :player
  belongs_to :game
  has_many :votes

  validates :selected, uniqueness: { scope: [:game_id, :player_id] }, allow_nil: true
end

# PlayersCard.where(player: some_player, game: some_game).map { |pc| pc.white_card }