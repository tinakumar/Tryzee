class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find_by_id(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new
    @user.email = params[:email]
    @user.password_digest = params[:password_digest]
    @user.photo_url = params[:photo_url]
    @user.latitude = params[:latitude]
    @user.longitude = params[:longitude]
    @user.first_name = params[:first_name]
    @user.last_name = params[:last_name]
    
    if @user.save
            redirect_to users_url
          else
      render 'new'
    end
  end

  def edit
    @user = User.find_by_id(params[:id])
  end

  def update
    @user = User.find_by_id(params[:id])
    @user.email = params[:email]
    @user.password_digest = params[:password_digest]
    @user.photo_url = params[:photo_url]
    @user.latitude = params[:latitude]
    @user.longitude = params[:longitude]
    @user.first_name = params[:first_name]
    @user.last_name = params[:last_name]
    
    if @user.save
            redirect_to users_url
          else
      render 'edit'
    end
  end

  def destroy
    @user = User.find_by_id(params[:id])
    @user.destroy
        redirect_to users_url
      end
end
