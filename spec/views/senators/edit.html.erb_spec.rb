require 'rails_helper'

RSpec.describe "senators/edit", type: :view do
  before(:each) do
    @senator = assign(:senator, Senator.create!(
      :CodigoParlamentar => "MyString",
      :Nome => "MyString",
      :UrlFoto => "MyString",
      :UrlPagina => "MyString",
      :Email => "MyString",
      :SiglaPartido => "MyString",
      :UF => "MyString"
    ))
  end

  it "renders the edit senator form" do
    render

    assert_select "form[action=?][method=?]", senator_path(@senator), "post" do

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
