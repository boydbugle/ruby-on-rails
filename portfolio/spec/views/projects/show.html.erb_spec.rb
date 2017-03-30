require 'rails_helper'

RSpec.describe "projects/show.html.erb", type: :view do
  it "displays the datails on project" do
    @project = build(:project)
    render
    expect(rendered).to have_content(@project.name)
  end
end
