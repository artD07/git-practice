class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def index
    @books = Book.all
  end

  def create
    book = Book.new(book_params)
    @book.user_id = current_user.id
    book.save
    redirect_to '/top'
  end

  def destroy
    book = 削除するBookレコードを取得
    book.削除
    redirect_to Bookの一覧ページへのパス
  end

  def update
    @book = Book.find(params[:id])
  @book.update(book_params)
  redirect_to book_path(@book.id)
  end




  def show
  end

  def edit
    @book = Book.find(params[:id])
  end

  private
  def book_params
    params.require(:book).permit(:title, :body, :image)
  end
end

