# require 'rails_helper'

# describe "the add a sighting process" do
#     it "adds a new sighting" do
#         visit sightings_path
#         click_link 'New Sighting'
#         click_on 'Select A Region'
#         fill_in 'Warden', :with => 'officer wamalwa'
#         fill_in 'zone', :with => 'something'
#         click_on 'submit'
#         expect(page).to have_content 'form'
#     end

#     it "gives an error when no name is entered" do
#         visit new_sighting_path
#         click_on 'submit'
#         expect(page).to have_content 'errors' 
#     end
# end