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
    has_attached_file :image, styles: { large: "1000x1000>", medium: "800x800>", thumb: "600x600>" }
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
    validates :name, presence: true
    validates :description, presence: true
    validates :link, presence: true
end
