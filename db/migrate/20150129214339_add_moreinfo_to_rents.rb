class AddMoreinfoToRents < ActiveRecord::Migration
  def change
    add_column :rents, :telephone, :string
    add_column :rents, :wechat, :string
    add_column :rents, :district, :string
  end
end
