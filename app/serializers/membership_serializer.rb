class MembershipSerializer
    include FastJsonapi::ObjectSerializer
    attributes :last_viewed
    belongs_to :user
    belongs_to :group
  end