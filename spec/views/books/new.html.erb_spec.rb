require 'rails_helper'

RSpec.describe "books/new", type: :view do
  before(:each) do
    assign(:book, Book.new(
      name: "MyString",
      author: "MyString",
      description: "MyText",
      price: 1.5,
      genre_id: 1,
      condition: 1,
      user: nil
    ))
  end

  it "renders new book form" do
    render

    assert_select "form[action=?][method=?]", books_path, "post" do

      assert_select "input[name=?]", "book[name]"

      assert_select "input[name=?]", "book[author]"

      assert_select "textarea[name=?]", "book[description]"

      assert_select "input[name=?]", "book[price]"

      assert_select "input[name=?]", "book[genre_id]"

      assert_select "input[name=?]", "book[condition]"

      assert_select "input[name=?]", "book[user_id]"
    end
  end
end
