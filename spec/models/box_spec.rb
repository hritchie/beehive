require 'spec_helper'

describe Box do
  before(:each) do
    @hive = FactoryGirl.create(:hive)
  end

  it "has a valid factory" do
   FactoryGirl.create(:box, hive_id: @hive.id).should be_valid 
  end

  it "returns # of bees" do
    @box = FactoryGirl.create(:box, hive_id: @hive.id)
    @box.bees.should == 0
    @box.bees = 1000
    @box.bees.should == 1000
  end

  it "returns amount of honey" do
    @box = FactoryGirl.create(:box, hive_id: @hive.id)
    @box.honey.should == 0
    @box.honey = 60
    @box.honey.should == 60
  end
end
