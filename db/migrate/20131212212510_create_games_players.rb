class CreateGamesPlayers < ActiveRecord::Migration
  def change
    create_table :games_players do |t|

      t.integer :game_players_white_cards
      t.integer :game_players_white_cards

      t.timestamps
    end
  end
end
