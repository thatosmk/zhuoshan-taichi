class Post < ApplicationRecord
  belongs_to :user
  extend FriendlyId
  friendly_id :title, use: :slugged


  def slug_options
    [
      [:title],
      [:title, :created_at]
    ]
  end
end
