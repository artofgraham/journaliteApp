class Record < ApplicationRecord
  belongs_to :user
  validates_presence_of :entrylog, :situation, :autothoughtDesc, :autothoughtExp, :emotionsDesc, :emotionsRate, :adaptiveResp, :outcomes
end
