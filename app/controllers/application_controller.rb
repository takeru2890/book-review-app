class ApplicationController < ActionController::Base
    before_action :get_rank
    
    def get_rank
        @ranks = Rank.all
    end
end
