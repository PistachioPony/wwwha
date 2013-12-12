class CreateGamePlayersWhiteCards < ActiveRecord::Migration
  def change
    create_table :game_players_white_cards do |t|

      t.integer :white_card_id
      t.integer :games_player_id

      t.timestamps
    end
  end
end
