require 'rails_helper'

describe Meaning do
  describe "associations" do
    it { should belong_to(:category) }
    it { should have_many(:words) }
  end

  describe "validations" do
    it { should validate_presence_of(:text) }
    # it { should validate_uniqueness_of(:text) }
  end
end
