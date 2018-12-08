require 'rails_helper'

RSpec.describe "parishes/edit", type: :view do
  before(:each) do
    @parish = assign(:parish, Parish.create!(
      :name => "MyString",
      :town => nil,
      :diocese => nil
    ))
  end

  it "renders the edit parish form" do
    render

    assert_select "form[action=?][method=?]", parish_path(@parish), "post" do

      assert_select "input[name=?]", "parish[name]"

      assert_select "input[name=?]", "parish[town_id]"

      assert_select "input[name=?]", "parish[diocese_id]"
    end
  end
end
