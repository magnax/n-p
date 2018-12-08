require 'rails_helper'

RSpec.describe "towns/edit", type: :view do
  before(:each) do
    @town = assign(:town, Town.create!(
      :name => "MyString",
      :country => nil
    ))
  end

  it "renders the edit town form" do
    render

    assert_select "form[action=?][method=?]", town_path(@town), "post" do

      assert_select "input[name=?]", "town[name]"

      assert_select "input[name=?]", "town[country_id]"
    end
  end
end
