class Entry < ApplicationRecord
  belongs_to :user
  validates_presence_of :jentrylog, :jentry
  has_rich_text :jentry
  # validates :jentry, presence: true
end