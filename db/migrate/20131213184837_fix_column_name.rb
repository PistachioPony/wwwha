class FixColumnName < ActiveRecord::Migration
  def change
     rename_column :players_cards, :games_id, :game_id
  end
end
