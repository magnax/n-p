require 'rails_helper'

RSpec.describe "dioceses/show", type: :view do
  before(:each) do
    @diocese = assign(:diocese, Diocese.create!(
      :name => "Name",
      :town => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
  end
end
