class BooksController < ApplicationController
	def new
		book = Book.new
    end
    
    def create
    	book.save
    	book = Book.find(params[:id])
    	render_to book_path(book.id)
    end

    def index
    	books = Book.all
    end

    def show
    	@book = Book.find(params[:id])
    end

private
 def book_params
 	prams.require(:book).permit(:title,　:body)
end

end
