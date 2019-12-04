class Group < ApplicationRecord
  # belongs_to :user
  belongs_to :subject
  has_many :comments, dependent: :destroy

  validates :title, presence: true
  validates :organizer, presence: true
  validates :timeline, presence: true
  validates :location, presence: true
end
