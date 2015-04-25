class CreateRents < ActiveRecord::Migration
  def change
    create_table :rents do |t|
      t.string :title
      t.date :date_from
      t.date :date_to
      t.text :description

      t.timestamps
    end
  end
end
