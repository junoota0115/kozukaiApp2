class PricesController < ApplicationController
    before_action :move_to_signed_in

    def index
        @prices = Price.where(user_id: current_user.id)
        @total_price = 0
        @prices.each do |price|
        @total_price += price.price
    end
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

    def move_to_signed_in
        unless user_signed_in?
          #サインインしていないユーザーはログインページが表示される
          redirect_to  '/users/sign_in'
        end
    end
end
