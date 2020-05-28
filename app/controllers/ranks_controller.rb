class RanksController < ApplicationController
    def show
        @rank = Rank.find(params[:id])
        @books = Book.where(rank_id: params[:id])
    end
end
