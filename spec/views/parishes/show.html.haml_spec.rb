require 'rails_helper'

RSpec.describe "parishes/show", type: :view do
  before(:each) do
    @parish = assign(:parish, Parish.create!(
      :name => "Name",
      :town => nil,
      :diocese => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
