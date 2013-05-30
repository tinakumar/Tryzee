class AddManufacturerNameToModels < ActiveRecord::Migration
  def change
    add_column :models, :manufacturer_name, :string
  end
end
