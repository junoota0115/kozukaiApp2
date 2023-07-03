class PricesController < ApplicationController
    def index
    end
    
    def new 
        @price = Price.new
    end
    
    def create
        @price = Price.new(price_params)

        @price.save
        redirect_to action: index
    end
    
    def show
    end

    def edit
    end

    def update
    end

    def delete
    end
    
    private
    def price_params
        params.require(:price).permit(:price,:content).merge(user_id: current_user.id)
    end
end
