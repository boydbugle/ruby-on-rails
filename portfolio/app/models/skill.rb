# == Schema Information
#
# Table name: skills
#
#  id         :integer          not null, primary key
#  language   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Skill < ApplicationRecord
    has_many :projects
    validates :language, presence: true
end
