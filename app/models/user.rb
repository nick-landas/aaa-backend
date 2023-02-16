class User < ApplicationRecord
    has_many :memberships, dependent: :destroy
    has_many :groups, through: :memberships
    has_many :messages
    validates :email, :name, presence: true
    validates :email, uniqueness: true
  end
