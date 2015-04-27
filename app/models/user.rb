class User < ActiveRecord::Base
  has_many :awards
  has_many :prizes, through: :awards

  validates :points, :role, presence: true
  validates :username, presence: true, uniqueness: true

  has_secure_password

  enum role: ["default", "admin"]

  def to_param
    username
  end

  def admin?
    role == "admin"
  end

  def disabled?
    disable == true
  end

  def not_disabled?
    disable == false
  end

end