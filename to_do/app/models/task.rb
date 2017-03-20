class Task < ActiveRecord::Base
    belongs_to :list 
    validates :description, :presence => true
    before_save :downcase_description

    private
    def downcase_description
        self.description=(description().downcase)
    end
end