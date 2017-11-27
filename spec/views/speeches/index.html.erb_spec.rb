require 'rails_helper'

RSpec.describe "speeches/index", type: :view do
  before(:each) do
    assign(:speeches, [
      Speech.create!(
        :CodigoParlamentar => "Codigo Parlamentar",
        :CodigoPronunciamento => "Codigo Pronunciamento",
        :Data => "Data",
        :UrlTexto => "Url Texto",
        :TextoCompleto => "MyText",
        :senator => nil
      ),
      Speech.create!(
        :CodigoParlamentar => "Codigo Parlamentar",
        :CodigoPronunciamento => "Codigo Pronunciamento",
        :Data => "Data",
        :UrlTexto => "Url Texto",
        :TextoCompleto => "MyText",
        :senator => nil
      )
    ])
  end

  it "renders a list of speeches" do
    render
    assert_select "tr>td", :text => "Codigo Parlamentar".to_s, :count => 2
    assert_select "tr>td", :text => "Codigo Pronunciamento".to_s, :count => 2
    assert_select "tr>td", :text => "Data".to_s, :count => 2
    assert_select "tr>td", :text => "Url Texto".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
