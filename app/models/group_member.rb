class GroupMember < ApplicationRecord
  belongs_to :group
  belongs_to :user

  has_many :users, through: :groups
end
