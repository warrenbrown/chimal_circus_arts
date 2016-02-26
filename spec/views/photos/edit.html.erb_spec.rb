require 'rails_helper'

RSpec.describe "photos/edit", type: :view do
  before(:each) do
    @photo = assign(:photo, Photo.create!(
      :title => "MyString",
      :descriptoin => "MyText",
      :file => "MyString"
    ))
  end

  it "renders the edit photo form" do
    render

    assert_select "form[action=?][method=?]", photo_path(@photo), "post" do

      assert_select "input#photo_title[name=?]", "photo[title]"

      assert_select "textarea#photo_descriptoin[name=?]", "photo[descriptoin]"

      assert_select "input#photo_file[name=?]", "photo[file]"
    end
  end
end
