FactoryGirl.define do
  factory :user do
    transient do
      upcased true 
    end
      name "foo"
      password "foobar"
      email "msee@gmail.com"

      after(:create) do |user,evaluator|
        user.email.downcase! if evaluator.upcased
      end
  end
end