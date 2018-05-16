class Lecture < ApplicationRecord

  mount_uploader :attachment, ImageUploader
  belongs_to :course
end
