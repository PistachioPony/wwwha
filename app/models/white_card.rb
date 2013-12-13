class WhiteCard < ActiveRecord::Base
  has_many :players_cards
  has_many :player, :through => :players_cards
end