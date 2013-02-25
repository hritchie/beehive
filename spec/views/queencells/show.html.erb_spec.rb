require 'spec_helper'

describe "queencells/show" do
  before(:each) do
    @queencell = assign(:queencell, stub_model(Queencell,
      :age => 1,
      :box_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
