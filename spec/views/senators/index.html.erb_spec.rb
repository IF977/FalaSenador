require 'rails_helper'

RSpec.describe "senators/index", type: :view do
  before(:each) do
    assign(:senators, [
      Senator.create!(
        :CodigoParlamentar => "Codigo Parlamentar",
        :Nome => "Nome",
        :UrlFoto => "Url Foto",
        :UrlPagina => "Url Pagina",
        :Email => "Email",
        :SiglaPartido => "Sigla Partido",
        :UF => "Uf"
      ),
      Senator.create!(
        :CodigoParlamentar => "Codigo Parlamentar",
        :Nome => "Nome",
        :UrlFoto => "Url Foto",
        :UrlPagina => "Url Pagina",
        :Email => "Email",
        :SiglaPartido => "Sigla Partido",
        :UF => "Uf"
      )
    ])
  end

  it "renders a list of senators" do
    render
    assert_select "tr>td", :text => "Codigo Parlamentar".to_s, :count => 2
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Url Foto".to_s, :count => 2
    assert_select "tr>td", :text => "Url Pagina".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Sigla Partido".to_s, :count => 2
    assert_select "tr>td", :text => "Uf".to_s, :count => 2
  end
end
