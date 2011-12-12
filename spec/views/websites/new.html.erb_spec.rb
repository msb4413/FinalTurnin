require 'spec_helper'

describe "websites/new.html.erb" do
  before(:each) do
    assign(:website, stub_model(Website,
      :name => "MyString",
      :url => "MyString",
      :type => ""
    ).as_new_record)
  end

  it "renders new website form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => websites_path, :method => "post" do
      assert_select "input#website_name", :name => "website[name]"
      assert_select "input#website_url", :name => "website[url]"
      assert_select "input#website_type", :name => "website[type]"
    end
  end
end
