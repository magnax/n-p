require 'rails_helper'

RSpec.describe "dioceses/new", type: :view do
  before(:each) do
    assign(:diocese, Diocese.new(
      :name => "MyString",
      :town => nil
    ))
  end

  it "renders new diocese form" do
    render

    assert_select "form[action=?][method=?]", dioceses_path, "post" do

      assert_select "input[name=?]", "diocese[name]"

      assert_select "input[name=?]", "diocese[town_id]"
    end
  end
end
