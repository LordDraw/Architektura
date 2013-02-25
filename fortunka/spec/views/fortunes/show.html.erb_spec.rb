require 'spec_helper'

describe "fortunes/show" do
  before(:each) do
    @fortune = assign(:fortune, stub_model(Fortune,
      :nazwa => "MyText",
      :ilosc => 1,
      :cena => "9.99",
      :opis => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    rendered.should match(/1/)
    rendered.should match(/9.99/)
    rendered.should match(/MyText/)
  end
end
