require 'spec_helper'

describe "packages/index" do
  before(:each) do
    assign(:packages, [
      stub_model(Package,
        :name => "Name",
        :email => "Email",
        :address => "Address",
        :details => "MyText",
        :stay => 1,
        :budget => 2,
        :places => "MyText",
        :activities => "MyText"
      ),
      stub_model(Package,
        :name => "Name",
        :email => "Email",
        :address => "Address",
        :details => "MyText",
        :stay => 1,
        :budget => 2,
        :places => "MyText",
        :activities => "MyText"
      )
    ])
  end

  it "renders a list of packages" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
