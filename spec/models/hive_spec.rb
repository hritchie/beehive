require 'spec_helper'

describe Hive do
  it "has a valid factory" do
   FactoryGirl.create(:hive).should be_valid 
  end

  it "returns the ids of its boxes" do
    f = FactoryGirl.create(:hive)
    b = FactoryGirl.create(:box, hive_id: f.id)
    f.boxes.first.hive_id.should equal(f.id)
  end

  it "can add a box" do
    f = FactoryGirl.create(:hive)
    c = f.boxes.count
    f.add_box
    f.boxes.count.should equal(c + 1)
  end
end

describe "A new Hive" do
  it "has 2 boxes" do
    f = FactoryGirl.create(:hive)
    f.boxes.count.should eq(2)
  end
end
  
