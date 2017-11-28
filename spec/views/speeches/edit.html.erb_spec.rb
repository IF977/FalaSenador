require 'rails_helper'

RSpec.describe "speeches/edit", type: :view do
  before(:each) do
    @speech = assign(:speech, Speech.create!(
      :codigoparlamentar => "MyString",
      :codigopronunciamento => "MyString",
      :data => "MyString",
      :urltexto => "MyString",
      :textocompleto => "MyText"
    ))
  end

  it "renders the edit speech form" do
    render

    assert_select "form[action=?][method=?]", speech_path(@speech), "post" do

      assert_select "input[name=?]", "speech[codigoparlamentar]"

      assert_select "input[name=?]", "speech[codigopronunciamento]"

      assert_select "input[name=?]", "speech[data]"

      assert_select "input[name=?]", "speech[urltexto]"

      assert_select "textarea[name=?]", "speech[textocompleto]"
    end
  end
end
