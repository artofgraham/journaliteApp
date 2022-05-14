require "rails_helper"

RSpec.describe Entry, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  context "validation" do
    it "has a journal entry" do
      entry = Entry.new(jentry: "").save
      expect(entry).to eq(false)
    end
  end
end