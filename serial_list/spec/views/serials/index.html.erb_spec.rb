require 'spec_helper'

describe "serials/index" do
  before(:each) do
    assign(:serials, [
      stub_model(Serial,
        :episode => "Episode",
        :director => "Director",
        :name => "Name",
        :year => 1,
        :length => 2
      ),
      stub_model(Serial,
        :episode => "Episode",
        :director => "Director",
        :name => "Name",
        :year => 1,
        :length => 2
      )
    ])
  end

  it "renders a list of serials" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Episode".to_s, :count => 2
    assert_select "tr>td", :text => "Director".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
