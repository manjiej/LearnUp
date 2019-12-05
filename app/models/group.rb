class Group < ApplicationRecord
  belongs_to :user
  belongs_to :subject
  has_many :comments, dependent: :destroy

  validates :title, presence: true
  validates :timeline, presence: true
  validates :location, presence: true

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  has_many :group_members
  has_many :members, through: :group_members, source: :user

  # def address_compiler
  #   location
  # end
end
