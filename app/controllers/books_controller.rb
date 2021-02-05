class BooksController < ApplicationController

	def index

		@books = Book.all

		if params[:search]
			@books = Book.search(params[:search]).order("created_at DESC")
		else
			@posts = Book.all.order('created_at DESC')

		end

	end	

	def show

		@book = Book.find_by_id(params[:id])
		
	end

	def new

		@book = Book.new

	end

	def create

		@book = Book.new(new_params)
		if @book.save

			redirect_to books_url
			
		end
		
	end

	def edit

		@book = Book.find_by_id(params[:id])
		
	end

	def updete

		@book = Book.find_by_id(params[:id])
		if @book.updete
			redirect_to books_url
		end
		
	end

	def destroy

		@book = Book.find_by_id(params[:id])
		if @book.destroy
			redirect_to books_url
		end
		
	end

	def search 

		@book = Book.where("book_name LIKE ?",params[:search])
	end

	private

	def new_params

		params.require(:book).permit(:book_name, :author, :publisher, :cost, :bill_number, :date_of_publishing, :edition, :price,)
		
	end

end
