require 'rails_helper'

RSpec.describe Project, type: :model do
  it { should validate_presence_of :name}
  it { should validate_presence_of :description}
  it { should validate_presence_of :link}
  it { should belong_to :skill}
end
