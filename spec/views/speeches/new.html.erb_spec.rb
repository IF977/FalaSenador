require 'rails_helper'

RSpec.describe "speeches/new", type: :view do
  before(:each) do
    assign(:speech, Speech.new(
      :CodigoParlamentar => "MyString",
      :CodigoPronunciamento => "MyString",
      :Data => "MyString",
      :UrlTexto => "MyString",
      :TextoCompleto => "MyText",
      :senator => nil
    ))
  end

  it "renders new speech form" do
    render

    assert_select "form[action=?][method=?]", speeches_path, "post" do

      assert_select "input[name=?]", "speech[CodigoParlamentar]"

      assert_select "input[name=?]", "speech[CodigoPronunciamento]"

      assert_select "input[name=?]", "speech[Data]"

      assert_select "input[name=?]", "speech[UrlTexto]"

      assert_select "textarea[name=?]", "speech[TextoCompleto]"

      assert_select "input[name=?]", "speech[senator_id]"
    end
  end
end
