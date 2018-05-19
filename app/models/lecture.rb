class Lecture < ApplicationRecord
  acts_as_commontable
  acts_as_votable
  mount_uploader :attachment, ImageUploader
  belongs_to :course
end
