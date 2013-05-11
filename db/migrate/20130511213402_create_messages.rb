class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.text :message
      t.integer :user_id
      t.integer :product_id
    end
  end
end
