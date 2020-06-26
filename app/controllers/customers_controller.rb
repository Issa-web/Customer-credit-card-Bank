class CustomersController < ApplicationController

    def index
        @customers = Customer.all
    end

    def show
        customer_finder
    end

    def create  
        @customer = Customer.new(strong_params)
        @customer.save
        redirect_to customer_path(@customer)
    end

    def new
        @customer = Customer.new
    end
    
    def edit        
        customer_finder
    end
    
    def update
        customer_finder
        @customer.update(strong_params)
        redirect_to customer_path(@customer.id)
    end

    def destroy
        customer_finder
        @customer.delete
        redirect_to customers_path
    end

    private

    def strong_params
        params.require(:customer).permit(:name, :age)
    end

    def customer_finder
        @customer = Customer.find(params[:id])
    end
    
end
