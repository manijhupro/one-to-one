require 'spec_helper'

describe "packages/edit" do
  before(:each) do
    @package = assign(:package, stub_model(Package,
      :name => "MyString",
      :email => "MyString",
      :address => "MyString",
      :details => "MyText",
      :stay => 1,
      :budget => 1,
      :places => "MyText",
      :activities => "MyText"
    ))
  end

  it "renders the edit package form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => packages_path(@package), :method => "post" do
      assert_select "input#package_name", :name => "package[name]"
      assert_select "input#package_email", :name => "package[email]"
      assert_select "input#package_address", :name => "package[address]"
      assert_select "textarea#package_details", :name => "package[details]"
      assert_select "input#package_stay", :name => "package[stay]"
      assert_select "input#package_budget", :name => "package[budget]"
      assert_select "textarea#package_places", :name => "package[places]"
      assert_select "textarea#package_activities", :name => "package[activities]"
    end
  end
end
