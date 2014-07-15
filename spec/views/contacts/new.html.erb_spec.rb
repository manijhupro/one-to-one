require 'spec_helper'

describe "contacts/new" do
  before(:each) do
    assign(:contact, stub_model(Contact,
      :name => "MyString",
      :email => "MyString",
      :title => "MyString",
      :body => "MyText",
      :phnumber => 1
    ).as_new_record)
  end

  it "renders new contact form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => contacts_path, :method => "post" do
      assert_select "input#contact_name", :name => "contact[name]"
      assert_select "input#contact_email", :name => "contact[email]"
      assert_select "input#contact_title", :name => "contact[title]"
      assert_select "textarea#contact_body", :name => "contact[body]"
      assert_select "input#contact_phnumber", :name => "contact[phnumber]"
    end
  end
end
