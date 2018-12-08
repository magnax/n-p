require 'rails_helper'

RSpec.describe "dioceses/index", type: :view do
  before(:each) do
    assign(:dioceses, [
      Diocese.create!(
        :name => "Name",
        :town => nil
      ),
      Diocese.create!(
        :name => "Name",
        :town => nil
      )
    ])
  end

  it "renders a list of dioceses" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
