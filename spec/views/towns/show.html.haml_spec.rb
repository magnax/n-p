require 'rails_helper'

RSpec.describe "towns/show", type: :view do
  before(:each) do
    @town = assign(:town, Town.create!(
      :name => "Name",
      :country => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
  end
end
