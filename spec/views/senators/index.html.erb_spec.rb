require 'rails_helper'

RSpec.describe "senators/index", type: :view do
  before(:each) do
    assign(:senators, [
      Senator.create!(
        :codigoparlamentar => "Codigoparlamentar",
        :nome => "Nome",
        :urlfoto => "Urlfoto",
        :urlpagina => "Urlpagina",
        :siglapartido => "Siglapartido",
        :uf => "Uf"
      ),
      Senator.create!(
        :codigoparlamentar => "Codigoparlamentar",
        :nome => "Nome",
        :urlfoto => "Urlfoto",
        :urlpagina => "Urlpagina",
        :siglapartido => "Siglapartido",
        :uf => "Uf"
      )
    ])
  end

  it "renders a list of senators" do
    render
    assert_select "tr>td", :text => "Codigoparlamentar".to_s, :count => 2
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Urlfoto".to_s, :count => 2
    assert_select "tr>td", :text => "Urlpagina".to_s, :count => 2
    assert_select "tr>td", :text => "Siglapartido".to_s, :count => 2
    assert_select "tr>td", :text => "Uf".to_s, :count => 2
  end
end
