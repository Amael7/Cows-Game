class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.references :users, foreign_key: true
      t.references :cards, foreign_key: true
      t.string :line1
      t.string :line2
      t.string :line3
      t.string :line4
      t.integer :game_score

      t.timestamps
    end
  end
end
