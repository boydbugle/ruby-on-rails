require 'rails_helper'

describe Sighting do
    it {should validate_presence_of :region}
    it {should validate_presence_of :warden}
    it {should validate_presence_of :address}
    it {should validate_presence_of :zone}
    it {should have_many :animals}
end
