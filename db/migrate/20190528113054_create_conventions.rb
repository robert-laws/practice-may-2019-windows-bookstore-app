class CreateConventions < ActiveRecord::Migration[5.2]
  def change
    create_table :conventions do |t|
      t.string :name
      t.string :location
      t.date :event_date

      t.timestamps
    end
  end
end
