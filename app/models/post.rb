class Post < ApplicationRecord
  belongs_to :user
  extend FriendlyId
  friendly_id :title, use: :slugged

  is_impressionable
  has_rich_text :content



  def slug_options
    [
      [:title],
      [:title, :created_at]
    ]
  end
end
