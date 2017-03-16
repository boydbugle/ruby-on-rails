class Sighting < ActiveRecord::Base
    has_many  :animals
    validates :region, :presence => true
    validates :warden, :presence => true
    validates :zone,   :presence => true
end