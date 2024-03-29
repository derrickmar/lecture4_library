class BooksController < ApplicationController
	def new
	end

	def create
		@book = Book.new(book_params)
		@book.save
		redirect_to book_path(@book)
	end

	def show
		@book = Book.find(params[:id])
	end

	def edit
		@book = Book.find(params[:id])
	end

	def update
		@book = Book.find(params[:id])
		@book.update_attributes(book_params)
		redirect_to book_path(@book)
	end

	def destroy
		@book = Book.find(params[:id])
		@book.destroy
		redirect_to books_new_path
	end

	private

	def book_params
		params.require(:book).permit(:title, :description)
	end
end
