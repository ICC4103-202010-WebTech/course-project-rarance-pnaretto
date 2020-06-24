class MsgsController < ApplicationController
  before_action do
    @conversation = Conversation.find(params[:conversation_id])
  end

  def index
    @msgs = @conversation.msgs
    @msg = @conversation.msgs.new
  end
  def new
    @msg = @conversation.msgs.new
  end

  def create
    @msg = @conversation.msgs.new(msg_params)
    if @msg.save
      redirect_to conversation_msgs_path(@conversation)
    end
  end
  private
  def msg_params
    params.require(:msg).permit(:body, :user_id)
  end
end