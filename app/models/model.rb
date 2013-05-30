class Model < ActiveRecord::Base
  attr_accessible :name, :manufacturer_id, :category_id, :category_name, :manufacturer_name

  belongs_to :manufacturer
  belongs_to :product
  belongs_to :search

  def manufacturer
    return Manufacturer.find_by_name(self.name)
  end

end
