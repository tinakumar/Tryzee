class Manufacturer < ActiveRecord::Base
  has_many :models
  belongs_to :search

end
