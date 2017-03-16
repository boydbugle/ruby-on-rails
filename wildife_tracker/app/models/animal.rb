class Animal < ActiveRecord::Base
    belongs_to :sighting
    validates :species, :presence => true
    validates :number, :presence => true
    validates :description, :presence => true
end