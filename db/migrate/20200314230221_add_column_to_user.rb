class AddColumnToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :username, :string
    add_column :users, :life_points, :integer
    add_column :users, :score, :integer
    add_column :users, :total_win, :integer
    add_column :users, :total_def, :integer
  end
end
