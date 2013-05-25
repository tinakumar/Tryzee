class Search < ActiveRecord::Base
  attr_accessible :category_id, :location, :manufacturer_id, :model_id
end
