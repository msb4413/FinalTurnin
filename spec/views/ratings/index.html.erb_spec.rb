require 'spec_helper'

describe "ratings/index.html.erb" do
  before(:each) do
    assign(:ratings, [
      stub_model(Rating,
        :website_id => 1,
        :user_id => "",
        :score => ""
      ),
      stub_model(Rating,
        :website_id => 1,
        :user_id => "",
        :score => ""
      )
    ])
  end

  it "renders a list of ratings" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
