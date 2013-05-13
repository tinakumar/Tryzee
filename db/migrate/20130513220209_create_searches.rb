class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :category
      t.integer :manufacturer_id
      t.integer :model_id
      t.integer :user_id
    end
  end
end
