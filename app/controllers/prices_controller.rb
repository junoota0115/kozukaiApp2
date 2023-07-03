class PricesController < ApplicationController
    def index
    end
    
    def new 
        @price = Price.new
    end
    
    def create
        @price = Price.new(
        user_id: @current_user.id)
        @price.save
        redirect_to price
    end
    
    def show
    end

    def edit
    end

    def update
    end

    def delete
    end
end
