class Sighting < ActiveRecord::Base
    geocoded_by :address
    after_validation :geocode
    has_many  :animals
    validates :region, :presence => true
    validates :address, :presence => true
    validates :warden, :presence => true
    validates :zone,   :presence => true
end
