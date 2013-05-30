class AddModelIdToManufacturers < ActiveRecord::Migration
  def change
    add_column :manufacturers, :model_id, :integer
  end
end
