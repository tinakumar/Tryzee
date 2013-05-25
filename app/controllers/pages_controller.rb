class PagesController < ApplicationController
  def home
  end

  def about
  end

  def how_it_works
  end

  def help
  end

  def start
  end

  def sign_up
  end

  def sign_in
  end

  def welcome
    current_user
    if current_user.nil?
      redirect_to root_url
      flash[:error] = "Login or sign up to view this page"
    end
  end

end
