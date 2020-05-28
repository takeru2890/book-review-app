class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def new
    @ranks = Rank.all
  end
  
  def create
    Book.create(title:params["books"]["title"],body:params["books"]["body"],rank_id:params["books"]["rank_id"])
    redirect_to "/"
  end
  
  def destroy
    book = Book.find(params["id"])
    book.destroy
    redirect_to "/"
  end
  
  def edit
    @book = Book.find(params["id"])
  end
  
  def update
    book = Book.find(params["id"])
    book.title = params["books"]["title"]
    book.body = params["books"]["body"]
    book.save
    redirect_to "/"
  end
end
