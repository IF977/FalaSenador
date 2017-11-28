require 'rails_helper'

RSpec.describe "speeches/index", type: :view do
  before(:each) do
    assign(:speeches, [
      Speech.create!(
        :codigoparlamentar => "Codigoparlamentar",
        :codigopronunciamento => "Codigopronunciamento",
        :data => "Data",
        :urltexto => "Urltexto",
        :textocompleto => "MyText"
      ),
      Speech.create!(
        :codigoparlamentar => "Codigoparlamentar",
        :codigopronunciamento => "Codigopronunciamento",
        :data => "Data",
        :urltexto => "Urltexto",
        :textocompleto => "MyText"
      )
    ])
  end

  it "renders a list of speeches" do
    render
    assert_select "tr>td", :text => "Codigoparlamentar".to_s, :count => 2
    assert_select "tr>td", :text => "Codigopronunciamento".to_s, :count => 2
    assert_select "tr>td", :text => "Data".to_s, :count => 2
    assert_select "tr>td", :text => "Urltexto".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
