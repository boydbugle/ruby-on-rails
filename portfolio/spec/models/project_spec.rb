# == Schema Information
#
# Table name: projects
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  link        :string
#  skill_id    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'rails_helper'

RSpec.describe Project, type: :model do
  it { should validate_presence_of :name}
  it { should validate_presence_of :description}
  it { should validate_presence_of :link}
  it { should belong_to :skill}
end
