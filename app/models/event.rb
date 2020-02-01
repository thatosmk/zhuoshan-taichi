class Event < ApplicationRecord

  belongs_to :user

  validates_presence_of :title
  validates_presence_of :from
  validates_presence_of :until

  # TODO: only admins can create events
  #before_save :verify_admin

end
