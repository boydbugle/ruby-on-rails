require 'rails_helper'

RSpec.describe User, type: :model do

  it { should validate_presence_of :name }
  it { should validate_presence_of :email }
  it { should validate_confirmation_of :password }
  
  # it "authenticates with matching email and password" do
  #   user = FactoryGirl.create(:user,email: "msee@gmail.com",password: "yulemguyz")
  #   user.authenticate("msee","yulemguyz").should eq(user)
  # end

  # it "does not authenticate with incorrect password" do
  #   user = FactoryGirl.create(:user,email: "msee@gmail.com",password: "yulemguyz")
  #   user.authenticate("msee","incorrect").should be_nil
  # end
end
