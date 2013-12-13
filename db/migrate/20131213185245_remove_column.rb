class RemoveColumn < ActiveRecord::Migration
  def change
    remove_column :players_cards, :games_player_id
  end
end
