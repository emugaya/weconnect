class BusinessesController < ApplicationController
    def new
    end

    def create
        @business = Business.new(business_params)
        @business.save
        render plain: params[:article].inspect
    end

    private
        def business_params
            params.require(:business).permit(:name, :description, :address)
        end
end
