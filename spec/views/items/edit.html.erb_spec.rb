require 'rails_helper'

RSpec.describe "items/edit", type: :view do
  before(:each) do
    @item = assign(:item, Item.create!(
      :name => "MyString",
      :description => "MyText",
      :price => 1.5,
      :size => "MyString",
      :user => nil
    ))
  end

  it "renders the edit item form" do
    render

    assert_select "form[action=?][method=?]", item_path(@item), "post" do

      assert_select "input#item_name[name=?]", "item[name]"

      assert_select "textarea#item_description[name=?]", "item[description]"

      assert_select "input#item_price[name=?]", "item[price]"

      assert_select "input#item_size[name=?]", "item[size]"

      assert_select "input#item_user_id[name=?]", "item[user_id]"
    end
  end
end
