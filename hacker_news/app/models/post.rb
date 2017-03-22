class Post < ActiveRecord::Base
    has_many :comments, as: :commentable
    validates :author, :presence => true
    validates :link, :presence => true 
end