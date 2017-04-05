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
    has_attached_file :image, styles: {thumb: "100x100#" }
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
    validates :language, presence: true
end
