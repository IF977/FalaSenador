require 'rails_helper'

RSpec.describe "speeches/show", type: :view do
  before(:each) do
    @speech = assign(:speech, Speech.create!(
      :codigoparlamentar => "Codigoparlamentar",
      :codigopronunciamento => "Codigopronunciamento",
      :data => "Data",
      :urltexto => "Urltexto",
      :textocompleto => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Codigoparlamentar/)
    expect(rendered).to match(/Codigopronunciamento/)
    expect(rendered).to match(/Data/)
    expect(rendered).to match(/Urltexto/)
    expect(rendered).to match(/MyText/)
  end
end
