class AddProductIdToSearches < ActiveRecord::Migration
  def change
    add_column :searches, :product_id, :integer
  end
end
