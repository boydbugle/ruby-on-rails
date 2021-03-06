require 'rails_helper'

describe Post do
    it {should validate_presence_of :author}
    it {should validate_presence_of :link}
    it {should have_many :comments}
end