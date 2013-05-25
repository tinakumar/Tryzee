class WelcomePage < ActiveRecord::Base
  attr_accessible :create, :delete, :new

  belongs_to :user
  belongs_to :register
end
