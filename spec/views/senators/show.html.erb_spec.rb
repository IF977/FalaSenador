require 'rails_helper'

RSpec.describe "senators/show", type: :view do
  before(:each) do
    @senator = assign(:senator, Senator.create!(
      :CodigoParlamentar => "Codigo Parlamentar",
      :Nome => "Nome",
      :UrlFoto => "Url Foto",
      :UrlPagina => "Url Pagina",
      :Email => "Email",
      :SiglaPartido => "Sigla Partido",
      :UF => "Uf"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Codigo Parlamentar/)
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/Url Foto/)
    expect(rendered).to match(/Url Pagina/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Sigla Partido/)
    expect(rendered).to match(/Uf/)
  end
end
