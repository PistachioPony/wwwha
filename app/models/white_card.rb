class WhiteCard < ActiveRecord::Base
  has_many :players_cards
  has_many :player, :through => :players_cards

  # def self.for_game(game)
  #   WhiteCard.includes(:players_cards)
  #     .merge(PlayersCard.where(game: game))
  #     .references(:players_cards)
  # end

  # def self.deck_for_player(game)
  #   WhiteCard.order("RANDOM()")
  #     .where
  #     .not(id: WhiteCard.for_game(game).pluck(:id))
  #     .limit(10)    
  # end
end