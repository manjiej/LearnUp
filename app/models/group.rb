class Group < ApplicationRecord
  belongs_to :user
  belongs_to :subject
  has_many :comments, dependent: :destroy

  validates :title, presence: true
  validates :timeline, presence: true
  validates :location, presence: true

  has_many :group_members
  has_many :members, through: :group_members, source: :user
end
