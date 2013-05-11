class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.string :photo_url
      t.float :latitude
      t.float :longitude
      t.string :first_name
      t.string :last_name
    end
  end
end
