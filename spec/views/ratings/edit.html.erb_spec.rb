require 'spec_helper'

describe "ratings/edit.html.erb" do
  before(:each) do
    @rating = assign(:rating, stub_model(Rating,
      :website_id => 1,
      :user_id => "",
      :score => ""
    ))
  end

  it "renders the edit rating form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => ratings_path(@rating), :method => "post" do
      assert_select "input#rating_website_id", :name => "rating[website_id]"
      assert_select "input#rating_user_id", :name => "rating[user_id]"
      assert_select "input#rating_score", :name => "rating[score]"
    end
  end
end
