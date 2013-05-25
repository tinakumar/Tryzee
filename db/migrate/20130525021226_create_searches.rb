class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.integer :category_id
      t.string :location
      t.integer :model_id
      t.integer :manufacturer_id

      t.timestamps
    end
  end
end
