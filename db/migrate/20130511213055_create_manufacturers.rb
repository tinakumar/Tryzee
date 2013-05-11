class CreateManufacturers < ActiveRecord::Migration
  def change
    create_table :manufacturers do |t|
      t.string :name
      t.boolean :rebate
      t.string :rebate_description
    end
  end
end
