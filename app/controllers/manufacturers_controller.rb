class ManufacturersController < ApplicationController

  def index
    @manufacturers = Manufacturer.all
  end

  def show
    @manufacturer = Manufacturer.find_by_id(params[:id])
  end

  def new
    @manufacturer = Manufacturer.new
  end

  def create
    @manufacturer = Manufacturer.new
    @manufacturer.name = params[:name]
    @manufacturer.rebate = params[:rebate]
    @manufacturer.rebate_description = params[:rebate_description]
    
    if @manufacturer.save
            redirect_to manufacturers_url
          else
      render 'new'
    end
  end

  def edit
    @manufacturer = Manufacturer.find_by_id(params[:id])
  end

  def update
    @manufacturer = Manufacturer.find_by_id(params[:id])
    @manufacturer.name = params[:name]
    @manufacturer.rebate = params[:rebate]
    @manufacturer.rebate_description = params[:rebate_description]
    
    if @manufacturer.save
            redirect_to manufacturers_url
          else
      render 'edit'
    end
  end

  def destroy
    @manufacturer = Manufacturer.find_by_id(params[:id])
    @manufacturer.destroy
        redirect_to manufacturers_url
      end
end
