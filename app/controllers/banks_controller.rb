class BanksController < ApplicationController

    def index
        @banks = Bank.all
    end

    def show
        @bank = Bank.find(params[:id])
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
