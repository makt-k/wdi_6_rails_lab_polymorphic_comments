require 'spec_helper'

describe "amplifiers/index" do
  before(:each) do
    assign(:amplifiers, [
      stub_model(Amplifier,
        :make => "Make",
        :model => "Model",
        :price => "9.99",
        :max_power => 1,
        :impedance => 2,
        :height => 3,
        :weight => 4
      ),
      stub_model(Amplifier,
        :make => "Make",
        :model => "Model",
        :price => "9.99",
        :max_power => 1,
        :impedance => 2,
        :height => 3,
        :weight => 4
      )
    ])
  end

  it "renders a list of amplifiers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Make".to_s, :count => 2
    assert_select "tr>td", :text => "Model".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
