require 'rails_helper'

RSpec.describe "speeches/show", type: :view do
  before(:each) do
    @speech = assign(:speech, Speech.create!(
      :CodigoParlamentar => "Codigo Parlamentar",
      :CodigoPronunciamento => "Codigo Pronunciamento",
      :Data => "Data",
      :UrlTexto => "Url Texto",
      :TextoCompleto => "MyText",
      :senator => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Codigo Parlamentar/)
    expect(rendered).to match(/Codigo Pronunciamento/)
    expect(rendered).to match(/Data/)
    expect(rendered).to match(/Url Texto/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
