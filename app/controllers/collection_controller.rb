class CollectionController < ApplicationController
  def 
    @books = Book.all
  end
end
