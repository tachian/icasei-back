require 'rails_helper'

RSpec.describe Track, type: :model do
  it "has a valid factory" do
    expect(FactoryBot.create(:track)).to be_valid
  end
 
  it "is invalid factory" do
    expect(FactoryBot.build(:invalid_track)).to be_invalid
  end
end
