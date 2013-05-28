class Product < ActiveRecord::Base
  attr_accessible :model_id, :photo_url, :category_id, :description

  belongs_to :model
  belongs_to :category
  belongs_to :user
  belongs_to :tryal
  has_many :messages
  belongs_to :search
end
