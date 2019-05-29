class CreateShops < ActiveRecord::Migration[5.2]
  def change
    create_table :shops do |t|
      t.string :name, limit: 25
      t.integer :capacity, limit: 6
      t.datetime :open_date
      t.string :city, limit: 25
      t.string :state, limit: 2

      t.timestamps
    end
  end
end
