class MessagesController < ApplicationController
  def index
    @messages = Message.all
  end

  def show
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
  end

  private
  def message_params
    params.require(:message).permit(:to, :from, :body)
  end
end
