class BooksController < ApplicationController
  before_action :authenticate_user!

  def index
    @book = Book.new
    @books = Book.all
    @user = current_user


  end

  def show
    @bookn = Book.new
    @book = Book.find(params[:id])
    @user = User.find(@book.user_id)
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    if @book.save
      flash[:notice1] = "You have created a book successfully"
      redirect_to book_path(@book.id)
    else
      @books = Book.all
      @user = current_user
      render :index
    end
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    @user = current_user

    if @book.update(book_params)
      flash[:notice2] = "You have updated a book successfully"
      redirect_to book_path(@book)
    else
      render :show
    end
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to books_path
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
  def correct_book
    book = Book.find(params[:id])
    if book.user != current_user
      redirect_to books_path
    else

    end
  end
end
