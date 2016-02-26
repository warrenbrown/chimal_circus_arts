require 'rails_helper'

RSpec.describe "photos/new", type: :view do
  before(:each) do
    assign(:photo, Photo.new(
      :title => "MyString",
      :descriptoin => "MyText",
      :file => "MyString"
    ))
  end

  it "renders new photo form" do
    render

    assert_select "form[action=?][method=?]", photos_path, "post" do

      assert_select "input#photo_title[name=?]", "photo[title]"

      assert_select "textarea#photo_descriptoin[name=?]", "photo[descriptoin]"

      assert_select "input#photo_file[name=?]", "photo[file]"
    end
  end
end
