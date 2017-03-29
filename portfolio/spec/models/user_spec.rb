require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = build(:user)
  end
  
  it { should validate_presence_of :name }
  it { should validate_uniqueness_of :name }
  it { should validate_length_of(:name).is_at_least(3).is_at_most(6)}


  it { should validate_presence_of :email }
  it { should validate_uniqueness_of :email }


  it { should validate_confirmation_of :password }
  it { should validate_length_of(:password).is_at_least(6).is_at_most(20)}
  # it "authenticates with matching email and password" do
  #   user = FactoryGirl.create(:user,email: "msee@gmail.com",password: "yulemguyz")
  #   user.authenticate("msee","yulemguyz").should eq(user)
  # end

  # it "does not authenticate with incorrect password" do
  #   user = FactoryGirl.create(:user,email: "msee@gmail.com",password: "yulemguyz")
  #   user.authenticate("msee","incorrect").should be_nil
  # end
end
