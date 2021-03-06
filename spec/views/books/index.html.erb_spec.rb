require 'rails_helper'

RSpec.describe "books/index", type: :view do
  before(:each) do
    assign(:books, [
      Book.create!(
        name: "Name",
        author: "Author",
        description: "MyText",
        price: 2.5,
        genre_id: 3,
        condition: 4,
        user: nil
      ),
      Book.create!(
        name: "Name",
        author: "Author",
        description: "MyText",
        price: 2.5,
        genre_id: 3,
        condition: 4,
        user: nil
      )
    ])
  end

  it "renders a list of books" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Author".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: 2.5.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: 4.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
