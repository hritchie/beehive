require 'spec_helper'

describe "boxes/index" do
  before(:each) do
    assign(:boxes, [
      stub_model(Box,
        :bees => 1,
        :honey => 2
      ),
      stub_model(Box,
        :bees => 1,
        :honey => 2
      )
    ])
  end

  it "renders a list of boxes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
