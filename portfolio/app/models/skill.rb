class Skill < ApplicationRecord
    has_many :projects
    validates :language, :presence => true
end
