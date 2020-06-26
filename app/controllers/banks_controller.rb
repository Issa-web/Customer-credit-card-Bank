class BanksController < ApplicationController

    def index
        @banks = Bank.all
    end

    def show
        bank_finder
    end

    def new
        @bank = Bank.new
    end

    def create    
        @bank = Bank.new(strong_params)
        @bank.save

        redirect_to bank_path(@bank)
    end
    
    def edit        
        bank_finder
    end
    
    def update
        bank_finder
        @bank.update(strong_params)

        redirect_to bank_path(@bank)
    end
    
    def destroy
        bank_finder
        @bank.delete

        redirect_to banks_path
    end

    private

    def strong_params
        params.require(:bank).permit(:name, :city)
    end

    def bank_finder
        @bank = Bank.find(params[:id])
    end
end
