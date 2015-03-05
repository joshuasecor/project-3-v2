class MessageMailer < ApplicationMailer
	default from: "Branch Studio <thebranchstudioLA@gmail.com>"
  default to: "Branch Studio <wcebron@gmail.com>"

  def new_message(message)
    @message = message
    
    mail subject: "Branch Studio message from #{message.name}"
  end
end
