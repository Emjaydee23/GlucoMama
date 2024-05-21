class MessagesController < ApplicationController
  before_action :find_chatroom

  def create

    @chatroom = Chatroom.find(params[:chatroom_id])
    @message = Message.new(message_params)
    @message.user = current_user
    @message.chatroom = @chatroom


    if @message.save
      ChatroomChannel.broadcast_to(
        @chatroom,
        render_to_string(partial: "message", locals: {message: @message})
      )
      head :ok
    else
      render "chatrooms/show", status: :unprocessable_entity
    end



  end

  private

  def find_chatroom
    @private_chat = Chatroom.find(params[:chatroom_id])
  end

  def message_params
    params.require(:message).permit(:content)
  end
end
