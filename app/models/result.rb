class Result < ActiveRecord::Base
  attr_accessible :category_id, :location, :manufacturer_id, :model_id, :search_id, :user_id
end
