class Notification < ActiveRecord::Base
  belongs_to :user
  belongs_to :subject, polymorphic: true

  scope :named, -> (name) { where(name: name) }
end
