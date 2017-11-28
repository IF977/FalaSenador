require 'rails_helper'

RSpec.describe "senators/show", type: :view do
  before(:each) do
    @senator = assign(:senator, Senator.create!(
      :codigoparlamentar => "Codigoparlamentar",
      :nome => "Nome",
      :urlfoto => "Urlfoto",
      :urlpagina => "Urlpagina",
      :siglapartido => "Siglapartido",
      :uf => "Uf"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Codigoparlamentar/)
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/Urlfoto/)
    expect(rendered).to match(/Urlpagina/)
    expect(rendered).to match(/Siglapartido/)
    expect(rendered).to match(/Uf/)
  end
end
