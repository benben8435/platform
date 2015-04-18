class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :col1, :string
    add_column :users, :col2, :string
    add_column :users, :col3, :string
  end
end
