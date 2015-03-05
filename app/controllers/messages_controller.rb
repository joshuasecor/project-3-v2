class MessagesController < ApplicationController
 	def new
    @message = Message.new
	end

  def create
    @message = Message.new(message_params)
  
    # respond_to do |format|  
      if @message.valid?
        MessageMailer.new_message(@message).deliver_now
        redirect_to contact_path
        flash[:success] = "Message was successfuly sent."
        #render text: "Thanks for the message. We'll be in touch shortly."
        #format.html { redirect_to(contact_path, :flash => "Message was created")}
      else
        flash[:alert] = "An error occurred while delivering this message."
        render :new
      end
    end
  # end

private

  def message_params
    params.require(:message).permit(:name, :email, :content)
  end

end
