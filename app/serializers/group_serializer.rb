class GroupSerializer
    include FastJsonapi::ObjectSerializer
    attributes :name, :description, :image_url
    has_many :memberships
    has_many :users, through: :memberships
  end