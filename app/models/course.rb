class Course < ApplicationRecord

  validates :title, presence: true
  has_many :lectures
  belongs_to :user

end
