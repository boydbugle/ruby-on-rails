require 'rails_helper'

RSpec.describe "skills/show.html.erb", type: :view do
  it "displays the datails on skill" do
    @skill = build(:skill)
    render
    expect(rendered).to have_content(@skill.language)
  end
end
