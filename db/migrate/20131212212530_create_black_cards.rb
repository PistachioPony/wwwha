class CreateBlackCards < ActiveRecord::Migration
  def change
    create_table :black_cards do |t|

      t.text :text


      t.timestamps
    end
  end
end
