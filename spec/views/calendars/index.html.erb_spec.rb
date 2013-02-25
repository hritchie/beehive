require 'spec_helper'

describe "calendars/index" do
  before(:each) do
    assign(:calendars, [
      stub_model(Calendar,
        :week => 1
      ),
      stub_model(Calendar,
        :week => 1
      )
    ])
  end

  it "renders a list of calendars" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
