require 'spec_helper'

describe Box do
  before(:each) do
    @hive = FactoryGirl.create(:hive)
  end

  it "has a valid factory" do
   FactoryGirl.create(:box, hive_id: @hive.id).should be_valid 
  end

  it "returns # of bees" do
    FactoryGirl.create(:box, hive_id: @hive.id).bees.should == 1000
  end

  it "returns amount of honey" do
    FactoryGirl.create(:box, hive_id: @hive.id, honey: 60).honey.should == 60
  end
end
