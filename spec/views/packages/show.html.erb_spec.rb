require 'spec_helper'

describe "packages/show" do
  before(:each) do
    @package = assign(:package, stub_model(Package,
      :name => "Name",
      :email => "Email",
      :address => "Address",
      :details => "MyText",
      :stay => 1,
      :budget => 2,
      :places => "MyText",
      :activities => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Email/)
    rendered.should match(/Address/)
    rendered.should match(/MyText/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
  end
end
