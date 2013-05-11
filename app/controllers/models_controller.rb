class ModelsController < ApplicationController

  def index
    @models = Model.all
  end

  def show
    @model = Model.find_by_id(params[:id])
  end

  def new
    @model = Model.new
  end

  def create
    @model = Model.new
    @model.name = params[:name]
    @model.manufacturer_id = params[:manufacturer_id]
    
    if @model.save
            redirect_to models_url
          else
      render 'new'
    end
  end

  def edit
    @model = Model.find_by_id(params[:id])
  end

  def update
    @model = Model.find_by_id(params[:id])
    @model.name = params[:name]
    @model.manufacturer_id = params[:manufacturer_id]
    
    if @model.save
            redirect_to models_url
          else
      render 'edit'
    end
  end

  def destroy
    @model = Model.find_by_id(params[:id])
    @model.destroy
        redirect_to models_url
      end
end
