class AddCategoryNameToModels < ActiveRecord::Migration
  def change
    add_column :models, :category_name, :string
  end
end
