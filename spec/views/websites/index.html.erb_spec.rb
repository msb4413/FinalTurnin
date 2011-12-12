require 'spec_helper'

describe "websites/index.html.erb" do
  before(:each) do
    assign(:websites, [
      stub_model(Website,
        :name => "Name",
        :url => "Url",
        :type => "Type"
      ),
      stub_model(Website,
        :name => "Name",
        :url => "Url",
        :type => "Type"
      )
    ])
  end

  it "renders a list of websites" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Type".to_s, :count => 2
  end
end
