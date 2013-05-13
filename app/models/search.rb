class Search < ActiveRecord::Base
  has_many :users
  has_many :manufacturers
  has_many :categories
  has_many :models
end
