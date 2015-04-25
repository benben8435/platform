class AddReferenceToRents < ActiveRecord::Migration
  def change
    add_reference :rents, :user
  end
end
