class Model < ActiveRecord::Base
  attr_accessible :name, :manufacturer_id

  belongs_to :manufacturer
  belongs_to :product
  belongs_to :search

end
