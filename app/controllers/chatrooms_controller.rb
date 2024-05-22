class ChatroomsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_chatroom, only: [:show]

  def index
    if current_user
      @user = current_user
      @chatrooms = Chatroom.where("user1_id = ? OR user2_id = ?", @user.id, @user.id).order("created_at DESC")
    else
      redirect_to login_path, notice: 'Please log in first.'
    end
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end


  private

  def find_chatroom
    @chatroom = Chatroom.find(params[:id])
  end

  def chatroom_params
    params.require(:chatroom).permit(:user1_id, :user2_id)
  end

end
