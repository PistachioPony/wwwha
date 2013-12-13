class RenameJeffsDumbTableName < ActiveRecord::Migration
  def change
    rename_table :game_players_white_cards, :players_cards
  end
end
