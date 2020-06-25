class CustomersController < ApplicationController

    def index
        @customer = Customer.all
    end

    def show
        @customer = Customer.find(params[:id])
    end

    def create       
    end

    def new
    end
    
    def edit        
    end
    
    def update
    end
    
end
