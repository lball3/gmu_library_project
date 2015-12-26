class ReservationsController < ApplicationController

  def create
    @book = Book.find(params[:book_id])
    @reservation = @book.reservations.new

    if current_user.reservations.where(book: @book).exists?
      flash[:error] = "You already have this book reserved."
      redirect_to book_path(@book)
    elsif @book.reservations.count >= @book.total_in_library
      flash[:error] = "No more books available for reservation."
      redirect_to book_path(@book)
    else
      @reservation.user = current_user
      @reservation.due_on = 7.days.from_now
      if @reservation.save
        flash[:success] = "Reservation successful."
        redirect_to book_path(@book)
      else
        flash[:error] = "Reservation failed."
        redirect_to book_path(@book)
      end
    end
  end

  def index
    @reservations = current_user.reservations.page(params[:page])
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    flash[:success] = "Book successfully returned."
    redirect_to reservations_path
  end

  def overdue
    @reservations = current_user.reservations
  end

end