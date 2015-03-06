class MessagesController < ApplicationController

 	def new
    @message = Message.new
    @about = About.last
	end

  def create
    @message = Message.new(message_params)
    
    if @message.valid?
      MessageMailer.new_message(@message).deliver_now
      flash[:alert] = "Your message was sent. We will respond shortly."
      redirect_to contact_path
    else
      flash[:alert] = "An error occurred while delivering this message."
      redirect_to contact_path
    end
  end

private

  def message_params
    params.require(:message).permit(:name, :email, :content)
  end

end
