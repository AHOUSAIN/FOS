require 'spec_helper'

describe "foods/edit" do
  before(:each) do
    @food = assign(:food, stub_model(Food,
      :name => "MyString",
      :price => 1,
      :available => false
    ))
  end

  it "renders the edit food form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => foods_path(@food), :method => "post" do
      assert_select "input#food_name", :name => "food[name]"
      assert_select "input#food_price", :name => "food[price]"
      assert_select "input#food_available", :name => "food[available]"
    end
  end
end
