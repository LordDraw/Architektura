require 'spec_helper'

describe "fortunes/index" do
  before(:each) do
    assign(:fortunes, [
      stub_model(Fortune,
        :nazwa => "MyText",
        :ilosc => 1,
        :cena => "9.99",
        :opis => "MyText"
      ),
      stub_model(Fortune,
        :nazwa => "MyText",
        :ilosc => 1,
        :cena => "9.99",
        :opis => "MyText"
      )
    ])
  end

  it "renders a list of fortunes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
