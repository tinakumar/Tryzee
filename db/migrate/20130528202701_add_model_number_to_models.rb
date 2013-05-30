class AddModelNumberToModels < ActiveRecord::Migration
  def change
    add_column :models, :model_number, :string
    add_column :models, :category_id, :integer
  end
end
