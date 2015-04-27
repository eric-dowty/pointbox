class Award < ActiveRecord::Base
  belongs_to :user
  belongs_to :prize

  validates :user_id, :prize_id, presence: :true
end