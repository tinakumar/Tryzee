class MessagesController < ApplicationController

  def index
    @messages = Message.all
  end

  def show
    @message = Message.find_by_id(params[:id])
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new
    @message.message = params[:message]
    @message.user_id = params[:user_id]
    @message.product_id = params[:product_id]
    
    if @message.save
            redirect_to messages_url
          else
      render 'new'
    end
  end

  def edit
    @message = Message.find_by_id(params[:id])
  end

  def update
    @message = Message.find_by_id(params[:id])
    @message.message = params[:message]
    @message.user_id = params[:user_id]
    @message.product_id = params[:product_id]
    
    if @message.save
            redirect_to messages_url
          else
      render 'edit'
    end
  end

  def destroy
    @message = Message.find_by_id(params[:id])
    @message.destroy
        redirect_to messages_url
      end
end
