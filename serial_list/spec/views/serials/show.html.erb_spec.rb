require 'spec_helper'

describe "serials/show" do
  before(:each) do
    @serial = assign(:serial, stub_model(Serial,
      :episode => "Episode",
      :director => "Director",
      :name => "Name",
      :year => 1,
      :length => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Episode/)
    rendered.should match(/Director/)
    rendered.should match(/Name/)
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
