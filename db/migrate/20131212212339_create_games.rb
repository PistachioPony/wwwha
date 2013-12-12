class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|

      t.integer :games_players_id
      t.integer :black_cards_id

      t.timestamps
    end
  end
end
