class BooksController < ApplicationController


  def index
   @books = Book.all
   @book = Book.new
  end

  def create
   @book = Book.new(book_params)
   @book.save
   redirect_to book_path(@book)
  end

  private
  # ストロングパラメータ
  def book_params
    params.require(:book).permit(:title, :body)
  end

end
