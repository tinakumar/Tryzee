class CreateRegisters < ActiveRecord::Migration
  def change
    create_table :registers do |t|
      t.string :first_name
      t.string :last_name
      t.string :photo_url
      t.string :location

      t.timestamps
    end
  end
end
