class Search < ActiveRecord::Base
  attr_accessible :category_id, :location, :manufacturer_id, :model_id, :keywords, :product_id

  def products
    @products ||= find_products
  end

  private
  def find_products
    products = Product.order(:description)
    products = products.where("description like?", "%#{keywords}%") if keywords.present?
    products = products.where(category_id: category_id) if category_id.present?
    products = products.where(manufacturer_id: manufacturer_id) if manufacturer_id.present?
    products = products.where(model_id: model_id) if model_id.present?
    products = products.where("description like?", "%#{location}%") if location.present?
    products
  end

end
