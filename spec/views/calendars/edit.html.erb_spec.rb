require 'spec_helper'

describe "calendars/edit" do
  before(:each) do
    @calendar = assign(:calendar, stub_model(Calendar,
      :week => 1
    ))
  end

  it "renders the edit calendar form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => calendars_path(@calendar), :method => "post" do
      assert_select "input#calendar_week", :name => "calendar[week]"
    end
  end
end
