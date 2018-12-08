require 'rails_helper'

RSpec.describe "buildings/new", type: :view do
  before(:each) do
    assign(:building, Building.new(
      :name => "MyString",
      :kind => "MyString",
      :town => nil,
      :parish => nil
    ))
  end

  it "renders new building form" do
    render

    assert_select "form[action=?][method=?]", buildings_path, "post" do

      assert_select "input[name=?]", "building[name]"

      assert_select "input[name=?]", "building[kind]"

      assert_select "input[name=?]", "building[town_id]"

      assert_select "input[name=?]", "building[parish_id]"
    end
  end
end
