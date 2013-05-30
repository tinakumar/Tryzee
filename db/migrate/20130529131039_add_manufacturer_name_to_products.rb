class AddManufacturerNameToProducts < ActiveRecord::Migration
  def change
    add_column :products, :manufacturer_name, :string
    add_column :products, :category_name, :string
  end
end
