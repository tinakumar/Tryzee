class User < ActiveRecord::Base
  attr_accessible :email, :password, :password_confirmation, :first_name, :last_name, :zip_code, :address, :address2, :city, :state
  has_many :tryals
  has_many :messages
  has_many :products, dependent: :destroy
  belongs_to :register
  belongs_to :welcome_page

  has_secure_password

  geocoded_by :zip_code
  after_validation :geocode

end
