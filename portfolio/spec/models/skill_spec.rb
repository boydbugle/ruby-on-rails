# == Schema Information
#
# Table name: skills
#
#  id         :integer          not null, primary key
#  language   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Skill, type: :model do
  it { should validate_presence_of :language}
  it { should have_many :projects}
end
