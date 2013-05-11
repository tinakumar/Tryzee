class User < ActiveRecord::Base
  has_many :tryals
  has_many :messages
  has_many :products, dependent: :destroy


end
