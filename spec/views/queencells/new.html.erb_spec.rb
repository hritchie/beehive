require 'spec_helper'

describe "queencells/new" do
  before(:each) do
    assign(:queencell, stub_model(Queencell,
      :age => 1,
      :box_id => 1
    ).as_new_record)
  end

  it "renders new queencell form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => queencells_path, :method => "post" do
      assert_select "input#queencell_age", :name => "queencell[age]"
      assert_select "input#queencell_box_id", :name => "queencell[box_id]"
    end
  end
end
