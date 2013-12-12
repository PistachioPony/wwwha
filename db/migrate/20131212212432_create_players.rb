class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|

      t.string :name
      t.string :email
      t.integer :games_players_id

      t.timestamps

    end
  end
end
