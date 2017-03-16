require 'rails_helper'

describe Animal do
    it {should validate_presence_of :species}
    it {should validate_presence_of :number}
    it {should validate_presence_of :description}
    it {should belong_to :sighting}
end