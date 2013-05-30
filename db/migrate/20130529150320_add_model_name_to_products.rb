class AddModelNameToProducts < ActiveRecord::Migration
  def change
    add_column :products, :model_name, :string
  end
end
