class AddPriceToRents < ActiveRecord::Migration
  def change
    add_column :rents, :price, :integer
  end
end
