require 'rails_helper'

RSpec.describe Contact, type: :model do
  it "has a valid factory" do
    expect(FactoryBot.create(:contact)).to be_valid
  end
 
  it "is invalid factory" do
    expect(FactoryBot.build(:invalid_contact)).to be_invalid
  end
end
