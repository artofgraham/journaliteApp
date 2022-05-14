class Entry < ApplicationRecord
  belongs_to :user
  validates_presence_of :jentrylog, :jentry
  # validates :jentry, presence: true
end