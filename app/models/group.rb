class Group < ApplicationRecord
    has_many :memberships, dependent: :destroy
    has_many :users, through: :memberships
    has_many :messages
    validates :name, :description, presence: true
  end