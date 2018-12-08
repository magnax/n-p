require 'rails_helper'

RSpec.describe "parishes/index", type: :view do
  before(:each) do
    assign(:parishes, [
      Parish.create!(
        :name => "Name",
        :town => nil,
        :diocese => nil
      ),
      Parish.create!(
        :name => "Name",
        :town => nil,
        :diocese => nil
      )
    ])
  end

  it "renders a list of parishes" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
