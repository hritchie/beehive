require 'spec_helper'

describe "boxes/show" do
  before(:each) do
    @box = assign(:box, stub_model(Box,
      :bees => 1,
      :honey => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
