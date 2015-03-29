require 'rails_helper'

describe Word do
  describe "associations" do
    it { should belong_to(:category) }
    it { should belong_to(:meaning) }
  end

  describe "validations" do
    it { should validate_presence_of(:text_hindi) }
    it { should validate_presence_of(:text_romanized) }
  end
end
