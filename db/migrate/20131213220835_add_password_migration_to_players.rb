class AddPasswordMigrationToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :password_digest, :string
  end
end
