require "rails_helper"

RSpec.describe Record, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  context "validation" do
    it "has a record situation" do
      record = Record.new(situation: "").save
      expect(record).to eq(false)
    end
  end
end