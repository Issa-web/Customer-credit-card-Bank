class CustomersController < ApplicationController

    def index
        @customers = Customer.all
    end

    def show
        @customer = Customer.find(params[:id])
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
        @customer = Customer.find(params[:id])
    end
    
    def update
        @customer = Customer.find(params[:id])
        @customer.update(strong_params)
        # byebug
        redirect_to customer_path(@customer.id)
    end

    def destroy
        @customer = Customer.find(params[:id])
        @customer.delete

        redirect_to customers_path

    end

    private

    def strong_params
        params.require(:customer).permit(:name, :age)
    end
    
end
