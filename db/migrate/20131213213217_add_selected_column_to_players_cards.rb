class AddSelectedColumnToPlayersCards < ActiveRecord::Migration
  def change
    add_column :players_cards, :selected, :boolean
  end
end
