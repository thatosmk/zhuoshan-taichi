class TaichiFile < ApplicationRecord
  belongs_to :user
  has_one_attached :docs

  validates_presence_of :title, :docs
end
