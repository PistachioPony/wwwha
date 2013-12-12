class CreateGamePlayersWhiteCards < ActiveRecord::Migration
  def change
    create_table :game_players_white_cards do |t|

      t.integer :white_cards_id
      t.integer :games_players_id

      t.timestamps
    end
  end
end
