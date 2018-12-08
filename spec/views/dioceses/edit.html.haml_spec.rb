require 'rails_helper'

RSpec.describe "dioceses/edit", type: :view do
  before(:each) do
    @diocese = assign(:diocese, Diocese.create!(
      :name => "MyString",
      :town => nil
    ))
  end

  it "renders the edit diocese form" do
    render

    assert_select "form[action=?][method=?]", diocese_path(@diocese), "post" do

      assert_select "input[name=?]", "diocese[name]"

      assert_select "input[name=?]", "diocese[town_id]"
    end
  end
end
