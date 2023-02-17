class MessageSerializer
    include FastJsonapi::ObjectSerializer
    attributes :content, :created_at
    belongs_to :group
    belongs_to :user
  end