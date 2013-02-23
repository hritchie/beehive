require 'spec_helper'

describe "hives/show" do
  before(:each) do
    @hive = assign(:hive, stub_model(Hive))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
