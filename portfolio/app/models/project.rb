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

class Project < ApplicationRecord
    belongs_to :skill
    validates :name, presence: true
    validates :description, presence: true
    validates :link, presence: true
end
