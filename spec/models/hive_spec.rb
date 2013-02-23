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

end
