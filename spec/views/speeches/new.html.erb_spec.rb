require 'rails_helper'

RSpec.describe "speeches/new", type: :view do
  before(:each) do
    assign(:speech, Speech.new(
      :codigoparlamentar => "MyString",
      :codigopronunciamento => "MyString",
      :data => "MyString",
      :urltexto => "MyString",
      :textocompleto => "MyText"
    ))
  end

  it "renders new speech form" do
    render

    assert_select "form[action=?][method=?]", speeches_path, "post" do

      assert_select "input[name=?]", "speech[codigoparlamentar]"

      assert_select "input[name=?]", "speech[codigopronunciamento]"

      assert_select "input[name=?]", "speech[data]"

      assert_select "input[name=?]", "speech[urltexto]"

      assert_select "textarea[name=?]", "speech[textocompleto]"
    end
  end
end
