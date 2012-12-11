require 'spec_helper'

describe "foods/new" do
  before(:each) do
    assign(:food, stub_model(Food,
      :name => "MyString",
      :price => 1,
      :available => false
    ).as_new_record)
  end

  it "renders new food form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => foods_path, :method => "post" do
      assert_select "input#food_name", :name => "food[name]"
      assert_select "input#food_price", :name => "food[price]"
      assert_select "input#food_available", :name => "food[available]"
    end
  end
end
