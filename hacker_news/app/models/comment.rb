class Comment < ApplicationRecord
    belongs_to :post
    validates :author, :presence => true
    validates :opinion, :presence => true
end
