require 'rails_helper'

RSpec.describe "photos/index", type: :view do
  before(:each) do
    assign(:photos, [
      Photo.create!(
        :title => "Title",
        :descriptoin => "MyText",
        :file => "File"
      ),
      Photo.create!(
        :title => "Title",
        :descriptoin => "MyText",
        :file => "File"
      )
    ])
  end

  it "renders a list of photos" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "File".to_s, :count => 2
  end
end
