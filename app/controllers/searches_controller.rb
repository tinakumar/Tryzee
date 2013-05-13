class SearchesController < ApplicationController

  def index
    @searches = Search.all
  end

  def show
    @search = Search.find_by_id(params[:id])
  end

  def new
    @search = Search.new
  end

  def create
    @search = Search.new
    @search.category = params[:category]
    @search.manufacturer_id = params[:manufacturer_id]
    @search.model_id = params[:model_id]
    @search.user_id = params[:user_id]
    
    if @search.save
            redirect_to searches_url
          else
      render 'new'
    end
  end

  def edit
    @search = Search.find_by_id(params[:id])
  end

  def update
    @search = Search.find_by_id(params[:id])
    @search.category = params[:category]
    @search.manufacturer_id = params[:manufacturer_id]
    @search.model_id = params[:model_id]
    @search.user_id = params[:user_id]
    
    if @search.save
            redirect_to searches_url
          else
      render 'edit'
    end
  end

  def destroy
    @search = Search.find_by_id(params[:id])
    @search.destroy
        redirect_to searches_url
      end
end
