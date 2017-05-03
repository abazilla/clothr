require 'rails_helper'

RSpec.describe "items/index", type: :view do
  before(:each) do
    assign(:items, [
      Item.create!(
        :name => "Name",
        :description => "MyText",
        :price => 2.5,
        :size => "Size",
        :user => nil
      ),
      Item.create!(
        :name => "Name",
        :description => "MyText",
        :price => 2.5,
        :size => "Size",
        :user => nil
      )
    ])
  end

  it "renders a list of items" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
    assert_select "tr>td", :text => "Size".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
