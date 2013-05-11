class Model < ActiveRecord::Base
  belongs_to :manufacturer
  belongs_to :product
end
