class Lecture < ApplicationRecord
  validates :content, presence: true
  validates :attachment, presence: true
  acts_as_commontable
  acts_as_votable
  mount_uploader :attachment, ImageUploader
  belongs_to :course
end
