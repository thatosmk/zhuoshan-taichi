class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  include SimpleDiscussion::ForumUser
  # associations
  has_many :events
  has_many :contents
  has_many :posts

  def full_name
    self.first_name.concat(' ').concat(self.last_name)
  end

  def name
    "#{first_name} #{last_name}"
  end
end
