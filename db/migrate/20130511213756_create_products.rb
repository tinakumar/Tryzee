class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :model_id
      t.string :photo_url
      t.text :description
      t.integer :category_id
    end
  end
end
