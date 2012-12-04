require 'spec_helper'

describe "fortunes/edit" do
  before(:each) do
    @fortune = assign(:fortune, stub_model(Fortune,
      :nazwa => "MyText",
      :ilosc => 1,
      :cena => "9.99",
      :opis => "MyText"
    ))
  end

  it "renders the edit fortune form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => fortunes_path(@fortune), :method => "post" do
      assert_select "textarea#fortune_nazwa", :name => "fortune[nazwa]"
      assert_select "input#fortune_ilosc", :name => "fortune[ilosc]"
      assert_select "input#fortune_cena", :name => "fortune[cena]"
      assert_select "textarea#fortune_opis", :name => "fortune[opis]"
    end
  end
end
