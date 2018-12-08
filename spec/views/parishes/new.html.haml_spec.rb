require 'rails_helper'

RSpec.describe "parishes/new", type: :view do
  before(:each) do
    assign(:parish, Parish.new(
      :name => "MyString",
      :town => nil,
      :diocese => nil
    ))
  end

  it "renders new parish form" do
    render

    assert_select "form[action=?][method=?]", parishes_path, "post" do

      assert_select "input[name=?]", "parish[name]"

      assert_select "input[name=?]", "parish[town_id]"

      assert_select "input[name=?]", "parish[diocese_id]"
    end
  end
end
