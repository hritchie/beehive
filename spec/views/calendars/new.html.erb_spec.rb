require 'spec_helper'

describe "calendars/new" do
  before(:each) do
    assign(:calendar, stub_model(Calendar,
      :week => 1
    ).as_new_record)
  end

  it "renders new calendar form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => calendars_path, :method => "post" do
      assert_select "input#calendar_week", :name => "calendar[week]"
    end
  end
end
