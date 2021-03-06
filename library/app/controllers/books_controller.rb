class BooksController < ApplicationController

  before_action :set_book, only: [ :show, :edit, :update, :destroy ]

# ...

  def index
    unless params[:search].blank?
      @books = Book.search(params[:search]).order(:title).page(params[:page])
    else
      @books = Book.all.order(:title).page(params[:page])
    end
  end


  def show
    @available_to_reserve = @book.total_in_library - @book.reservations.count
    @reserved_by_user = current_user.reservations.where(book: @book).exists?
  end
  
  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
        redirect_to @book, notice: "#{@book.title} was created!"
    else
        render :new
    end
  end

  def edit
  end

  def update
    if @book.update(book_params)
        redirect_to @book, notice: "#{@book.title} was updated!"
    else
        render :edit
    end
  end

  def destroy
    @book.destroy
    redirect_to books_url
  end

  private

  def book_params
      params.require(:book).permit(:title, :author, :author_id, :pages, :abstract, :isbn, :genre, :published_on, :total_in_library, :image_cover_url)
    end

  def set_book
    @book = Book.find(params[:id])
  end

end
