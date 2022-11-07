class BooksController < ApplicationController
  def new
    book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.save
    redirect_to '/books/show'
  end

  def index
    @book = Book.all
    # @book = Book.find(params[:id])
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
