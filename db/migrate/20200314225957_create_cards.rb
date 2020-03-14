class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.string :image
      t.integer :points
      t.integer :number
      t.boolean :selected

      t.timestamps
    end
  end
end
