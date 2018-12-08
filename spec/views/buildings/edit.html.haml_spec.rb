require 'rails_helper'

RSpec.describe "buildings/edit", type: :view do
  before(:each) do
    @building = assign(:building, Building.create!(
      :name => "MyString",
      :kind => "MyString",
      :town => nil,
      :parish => nil
    ))
  end

  it "renders the edit building form" do
    render

    assert_select "form[action=?][method=?]", building_path(@building), "post" do

      assert_select "input[name=?]", "building[name]"

      assert_select "input[name=?]", "building[kind]"

      assert_select "input[name=?]", "building[town_id]"

      assert_select "input[name=?]", "building[parish_id]"
    end
  end
end
