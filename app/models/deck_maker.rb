module DeckMaker
  def self.make(player, game)
    WhiteCard.order("RANDOM()").limit(4).each do |card|
      PlayersCard.create(player: player, game: game, white_card: card)
    end
  end
end