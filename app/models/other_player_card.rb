module OtherPlayerCard
  def self.make(game)
  PlayersCard.where(game_id: game, selected: true).pluck(:white_card_id)
    end
  end
end