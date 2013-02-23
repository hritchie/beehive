require 'spec_helper'

describe "boxes/edit" do
  before(:each) do
    @box = assign(:box, stub_model(Box,
      :bees => 1,
      :honey => 1
    ))
  end

  it "renders the edit box form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => boxes_path(@box), :method => "post" do
      assert_select "input#box_bees", :name => "box[bees]"
      assert_select "input#box_honey", :name => "box[honey]"
    end
  end
end
