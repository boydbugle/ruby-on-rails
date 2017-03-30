FactoryGirl.define do
  factory :user do
    transient do
      upcased true 
    end
      name "foo"
      password "foobar"
      email "msee@gmail.com"

      after(:build) do |user,evaluator|
        user.email.upcase! if evaluator.upcased
      end
  end
end