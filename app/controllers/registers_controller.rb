class RegistersController < ApplicationController
  def new
  end

  def edit

  end

  def show
  end

  def create
    @register = Register.new
    @register.first_name = params[:first_name]
    @register.last_name = params[:last_name]
    @register.photo_url = params[:photo_url]
    @register.location = params[:location]

    if @register.save
            # users_url
            redirect_to welcome_url
          else
      render 'new'
    end
  end
end
