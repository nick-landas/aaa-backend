class MessageRelayJob < ApplicationJob
    queue_as :default
  
    def perform(message)
      group = message.group
      MessagesChannel.broadcast_to(group, MessageSerializer.new(message).serialized_json)
    end
  end