require 'spec_helper'

describe "hives/edit" do
  before(:each) do
    @hive = assign(:hive, stub_model(Hive))
  end

  it "renders the edit hive form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => hives_path(@hive), :method => "post" do
    end
  end
end
