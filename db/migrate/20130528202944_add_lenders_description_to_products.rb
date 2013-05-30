class AddLendersDescriptionToProducts < ActiveRecord::Migration
  def change
    add_column :products, :lenders_description, :text
  end
end
