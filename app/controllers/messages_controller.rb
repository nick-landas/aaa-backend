class MessagesController < ApplicationController
    def index
      user = User.find(params[:user_id])
      group_ids = user.memberships.pluck(:group_id)
      messages = Message.where(group_id: group_ids)
      render json: MessageSerializer.new(messages).serialized_json
    end
  end