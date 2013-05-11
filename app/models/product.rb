class Product < ActiveRecord::Base
  belongs_to :model
  belongs_to :category
  belongs_to :user
  belongs_to :tryal
  has_many :messages
end
