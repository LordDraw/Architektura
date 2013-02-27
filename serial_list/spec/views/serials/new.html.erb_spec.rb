require 'spec_helper'

describe "serials/new" do
  before(:each) do
    assign(:serial, stub_model(Serial,
      :episode => "MyString",
      :director => "MyString",
      :name => "MyString",
      :year => 1,
      :length => 1
    ).as_new_record)
  end

  it "renders new serial form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => serials_path, :method => "post" do
      assert_select "input#serial_episode", :name => "serial[episode]"
      assert_select "input#serial_director", :name => "serial[director]"
      assert_select "input#serial_name", :name => "serial[name]"
      assert_select "input#serial_year", :name => "serial[year]"
      assert_select "input#serial_length", :name => "serial[length]"
    end
  end
end
