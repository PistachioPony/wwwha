class AddPlayerIdColumnToPlayersCards < ActiveRecord::Migration
  def change
    add_column :players_cards, :player_id, :integer

  end
end
