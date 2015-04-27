class Prize < ActiveRecord::Base
  has_many :awards
  has_many :users, through: :awards

  validates :name, :description, :value, presence: true

  has_attached_file :image
  validates_attachment_content_type :image, content_type: ["image/jpg", "image/jpeg", "image/png"]
end