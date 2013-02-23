require 'spec_helper'

describe Box do
  it "has a valid factory" do
   FactoryGirl.create(:box).should be_valid 
  end

  it "returns # of bees" do
    FactoryGirl.create(:box).bees.should == 1000
  end

  it "returns amount of honey" do
    FactoryGirl.create(:box, honey: 60).honey.should == 60
  end
end
