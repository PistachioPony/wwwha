class Player < ActiveRecord::Base

    has_many :games :through, :games_players
    has_many :white_cards :through, :games_players


end