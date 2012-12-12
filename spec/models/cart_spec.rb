require 'spec_helper'

describe Cart do
  it "should have proper asscciations" do
    should have_many(:foods)
  end  
  
  
  it "should have proper validations" do
    should validate_presence_of(:password)
  end
end
