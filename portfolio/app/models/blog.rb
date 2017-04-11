class Blog < ApplicationRecord
    has_attached_file :image, styles: { large: "900x300#", medium: "600x600>", thumb: "300x300>" }
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
    validates :title, presence: true
    validates :content, presence: true
    validates :link, presence: true
end
