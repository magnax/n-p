require 'rails_helper'

RSpec.describe "buildings/index", type: :view do
  before(:each) do
    assign(:buildings, [
      Building.create!(
        :name => "Name",
        :kind => "Kind",
        :town => nil,
        :parish => nil
      ),
      Building.create!(
        :name => "Name",
        :kind => "Kind",
        :town => nil,
        :parish => nil
      )
    ])
  end

  it "renders a list of buildings" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Kind".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
