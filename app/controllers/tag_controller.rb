class TagController < ApplicationController

    def index
    end

    def create
        
    end

    def show
    end
    
    def destroy
    end

    private 

    def user_params(*args)
        params.require(:tag).permit(*args)
    end
end