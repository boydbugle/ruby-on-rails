require 'rails_helper'

RSpec.feature "adding skills" do

    scenario "allows a user to add a skill" do

        skill = create(:skill)

        visit skill_path(skill)

        expect(page).to have_content("ruby on rails")
    end
end