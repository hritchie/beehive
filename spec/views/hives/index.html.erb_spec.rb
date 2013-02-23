require 'spec_helper'

describe "hives/index" do
  before(:each) do
    assign(:hives, [
      stub_model(Hive),
      stub_model(Hive)
    ])
  end

  it "renders a list of hives" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
