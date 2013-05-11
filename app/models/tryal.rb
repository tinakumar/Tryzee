class Tryal < ActiveRecord::Base
  belongs_to :user
  belongs_to :product
  belongs_to :lender, :class_name => 'User'
end
