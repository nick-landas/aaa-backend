class MessagesChannel < ApplicationCable::Channel
    def subscribed
      stop_all_streams
      stream_for Group.find_by(id: params['id'])
    end
  
    def receive(data)
      group = Group.find_by(id: data['groupId'])
      user = User.find_by(id: data['userId'])
      message = Group.messages.create(content: data['content'], user: user)
      MessageRelayJob.perform_later(message)
    end
  
    def unsubscribed
      stop_all_streams
    end
  end