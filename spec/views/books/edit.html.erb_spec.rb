require 'rails_helper'

RSpec.describe "books/edit", type: :view do
  before(:each) do
    @book = assign(:book, Book.create!(
      name: "MyString",
      author: "MyString",
      description: "MyText",
      price: 1.5,
      genre_id: 1,
      condition: 1,
      user: nil
    ))
  end

  it "renders the edit book form" do
    render

    assert_select "form[action=?][method=?]", book_path(@book), "post" do

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
