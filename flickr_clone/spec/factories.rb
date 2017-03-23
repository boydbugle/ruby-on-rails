FactoryGirl.define do
  factory :comment do
    comment "MyText"
    photo_id 1
    user_id 1
  end
  factory :user do
    
  end
  factory :photo do
    photo "MyString"
    tag "MyString"
    vote 1
    user_id 1
  end
  end