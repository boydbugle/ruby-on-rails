FactoryGirl.define do
  factory :user do
    name "MyString"
    email "MyString"
    password_digest "MyString"
  end
  factory :comment do
    comment "MyString"
    user_id 1
    photo_id 1
  end
  factory :photo do
    photo "MyString"
    tag "MyString"
    vote 1
    user_id 1
  end
  end