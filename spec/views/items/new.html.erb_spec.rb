require 'rails_helper'

RSpec.describe "items/new", type: :view do
  before(:each) do
    assign(:item, Item.new(
      :name => "MyString",
      :description => "MyText",
      :price => 1.5,
      :size => "MyString",
      :user => nil
    ))
  end

  it "renders new item form" do
    render

    assert_select "form[action=?][method=?]", items_path, "post" do

      assert_select "input#item_name[name=?]", "item[name]"

      assert_select "textarea#item_description[name=?]", "item[description]"

      assert_select "input#item_price[name=?]", "item[price]"

      assert_select "input#item_size[name=?]", "item[size]"

      assert_select "input#item_user_id[name=?]", "item[user_id]"
    end
  end
end
