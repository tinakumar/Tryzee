class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.integer :user_id
      t.string :location
      t.integer :model_id
      t.integer :manufacturer_id
      t.integer :search_id
      t.integer :category_id

      t.timestamps
    end
  end
end
