require 'spec_helper'

describe "websites/edit.html.erb" do
  before(:each) do
    @website = assign(:website, stub_model(Website,
      :name => "MyString",
      :url => "MyString",
      :type => ""
    ))
  end

  it "renders the edit website form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => websites_path(@website), :method => "post" do
      assert_select "input#website_name", :name => "website[name]"
      assert_select "input#website_url", :name => "website[url]"
      assert_select "input#website_type", :name => "website[type]"
    end
  end
end
