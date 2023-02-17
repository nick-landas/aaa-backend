class UserSerializer
    include FastJsonapi::ObjectSerializer
    attributes :email, :name, :image_url
    has_many :memberships
    has_many :groups, through: :memberships
  end