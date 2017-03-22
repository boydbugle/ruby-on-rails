class Comment < ApplicationRecord
    belongs_to :commentable, polymorphic: true
    has_many :comments, as: :commentable
    validates :author, :presence => true
    validates :opinion, :presence => true
end
