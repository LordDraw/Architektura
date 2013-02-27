require 'spec_helper'

describe "serials/edit" do
  before(:each) do
    @serial = assign(:serial, stub_model(Serial,
      :episode => "MyString",
      :director => "MyString",
      :name => "MyString",
      :year => 1,
      :length => 1
    ))
  end

  it "renders the edit serial form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => serials_path(@serial), :method => "post" do
      assert_select "input#serial_episode", :name => "serial[episode]"
      assert_select "input#serial_director", :name => "serial[director]"
      assert_select "input#serial_name", :name => "serial[name]"
      assert_select "input#serial_year", :name => "serial[year]"
      assert_select "input#serial_length", :name => "serial[length]"
    end
  end
end
