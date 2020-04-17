class TaichiFile < ApplicationRecord
  belongs_to :user
  has_one_attached :docs
end
