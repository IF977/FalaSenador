require 'rails_helper'

RSpec.describe "senators/new", type: :view do
  before(:each) do
    assign(:senator, Senator.new(
      :codigoparlamentar => "MyString",
      :nome => "MyString",
      :urlfoto => "MyString",
      :urlpagina => "MyString",
      :siglapartido => "MyString",
      :uf => "MyString"
    ))
  end

  it "renders new senator form" do
    render

    assert_select "form[action=?][method=?]", senators_path, "post" do

      assert_select "input[name=?]", "senator[codigoparlamentar]"

      assert_select "input[name=?]", "senator[nome]"

      assert_select "input[name=?]", "senator[urlfoto]"

      assert_select "input[name=?]", "senator[urlpagina]"

      assert_select "input[name=?]", "senator[siglapartido]"

      assert_select "input[name=?]", "senator[uf]"
    end
  end
end
