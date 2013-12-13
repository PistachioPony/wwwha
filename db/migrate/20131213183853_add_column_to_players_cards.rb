class AddColumnToPlayersCards < ActiveRecord::Migration
  def change
    add_column :players_cards, :games_id, :integer
  end
end
