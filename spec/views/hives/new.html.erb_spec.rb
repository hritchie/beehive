require 'spec_helper'

describe "hives/new" do
  before(:each) do
    assign(:hive, stub_model(Hive).as_new_record)
  end

  it "renders new hive form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => hives_path, :method => "post" do
    end
  end
end
