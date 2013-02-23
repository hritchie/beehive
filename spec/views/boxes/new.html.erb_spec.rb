require 'spec_helper'

describe "boxes/new" do
  before(:each) do
    assign(:box, stub_model(Box,
      :bees => 1,
      :honey => 1
    ).as_new_record)
  end

  it "renders new box form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => boxes_path, :method => "post" do
      assert_select "input#box_bees", :name => "box[bees]"
      assert_select "input#box_honey", :name => "box[honey]"
    end
  end
end
