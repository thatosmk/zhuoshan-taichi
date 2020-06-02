class Club < ApplicationRecord

  has_rich_text :content

  has_many_attached :images
end
