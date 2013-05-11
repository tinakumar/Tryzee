class TryalsController < ApplicationController

  def index
    @tryals = Tryal.all
  end

  def show
    @tryal = Tryal.find_by_id(params[:id])
  end

  def new
    @tryal = Tryal.new
  end

  def create
    @tryal = Tryal.new
    @tryal.status = params[:status]
    @tryal.user_id = params[:user_id]
    @tryal.lender_id = params[:lender_id]
    @tryal.product_id = params[:product_id]
    @tryal.start_at = params[:start_at]
    @tryal.due_at = params[:due_at]
    
    if @tryal.save
            redirect_to tryals_url
          else
      render 'new'
    end
  end

  def edit
    @tryal = Tryal.find_by_id(params[:id])
  end

  def update
    @tryal = Tryal.find_by_id(params[:id])
    @tryal.status = params[:status]
    @tryal.user_id = params[:user_id]
    @tryal.lender_id = params[:lender_id]
    @tryal.product_id = params[:product_id]
    @tryal.start_at = params[:start_at]
    @tryal.due_at = params[:due_at]
    
    if @tryal.save
            redirect_to tryals_url
          else
      render 'edit'
    end
  end

  def destroy
    @tryal = Tryal.find_by_id(params[:id])
    @tryal.destroy
        redirect_to tryals_url
      end
end
