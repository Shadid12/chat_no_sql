class MessagesController < ApplicationController
    def create
        @message = Message.new(message_params)
        @message.user = current_user
        if @message.save
            ActionCable.server.broadcast 'room_channel',
                                   body:  @message.body,
                                   username: @message.user.username
            head :ok
        end
    end
    
    def new
    end
    
    private
    
    def message_params
        params.permit(:body, :room)
    end
    
end
