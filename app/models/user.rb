class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :groups, through: :group_members

  validates :name, presence: true, uniqueness: true

  mount_uploader :photo, PhotoUploader
end
