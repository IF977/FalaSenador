require 'rails_helper'

RSpec.describe "senators/new", type: :view do
  before(:each) do
    assign(:senator, Senator.new(
      :CodigoParlamentar => "MyString",
      :Nome => "MyString",
      :UrlFoto => "MyString",
      :UrlPagina => "MyString",
      :Email => "MyString",
      :SiglaPartido => "MyString",
      :UF => "MyString"
    ))
  end

  it "renders new senator form" do
    render

    assert_select "form[action=?][method=?]", senators_path, "post" do

      assert_select "input[name=?]", "senator[CodigoParlamentar]"

      assert_select "input[name=?]", "senator[Nome]"

      assert_select "input[name=?]", "senator[UrlFoto]"

      assert_select "input[name=?]", "senator[UrlPagina]"

      assert_select "input[name=?]", "senator[Email]"

      assert_select "input[name=?]", "senator[SiglaPartido]"

      assert_select "input[name=?]", "senator[UF]"
    end
  end
end
