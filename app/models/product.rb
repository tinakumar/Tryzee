class Product < ActiveRecord::Base
  attr_accessible :model_id, :photo_url, :category_name, :description, :manufacturer_name, :model_name, :category_id, :manufacturer_id

  belongs_to :model
  belongs_to :category
  belongs_to :user
  belongs_to :tryal
  has_many :messages
  belongs_to :search
  belongs_to :manufacturer

  def self.search(search)
    if search
      find(:all, :conditions => ['model_name LIKE ?', "%#{search}%"])
    elsif
      find(:all, :conditions => ['category_name LIKE ?',"%#{search}%"])

    elsif
      find(:all, :conditions => ['manufacturer_name LIKE ?',"%#{search}%"])

    else
      find(:all)
  end
end

end
