class BooksController < ApplicationController
  def new
  end

  def index
    @book =Book.new
    @books = Books.all
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to books_path
  end

  def show
  end


  private

  def book_params
    params.require(:book).permit(:title,:body)
  end

end