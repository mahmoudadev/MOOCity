class User < ApplicationRecord

  validates :name, presence: true
  validates :gender, presence: true
  validates :birthday, presence: true
  validates :photo, presence: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  acts_as_commontator
  acts_as_voter
  mount_uploader :photo, ImageUploader
  has_many :courses
end
