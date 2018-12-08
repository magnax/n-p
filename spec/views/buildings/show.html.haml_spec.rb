require 'rails_helper'

RSpec.describe "buildings/show", type: :view do
  before(:each) do
    @building = assign(:building, Building.create!(
      :name => "Name",
      :kind => "Kind",
      :town => nil,
      :parish => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Kind/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
