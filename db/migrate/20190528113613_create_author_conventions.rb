class CreateAuthorConventions < ActiveRecord::Migration[5.2]
  def change
    create_table :author_conventions do |t|
      t.references :author, foreign_key: true
      t.references :convention, foreign_key: true

      t.timestamps
    end
  end
end
