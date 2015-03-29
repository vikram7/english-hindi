require 'rails_helper'

describe Category do
  describe "associations" do
    it { should have_many(:meanings) }
    it { should have_many(:words) }
  end

  describe "validations" do
    it { should validate_uniqueness_of(:part_of_speech) }
    it { should validate_presence_of(:part_of_speech) }
  end
end
