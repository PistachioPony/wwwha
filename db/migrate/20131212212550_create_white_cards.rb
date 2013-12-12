class CreateWhiteCards < ActiveRecord::Migration
  def change
    create_table :white_cards do |t|

      t.text :text

      t.timestamps
    end
  end
end
