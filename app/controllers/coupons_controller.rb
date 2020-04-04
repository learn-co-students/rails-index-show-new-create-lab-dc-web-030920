class CouponsController < ApplicationController

    def index
        @coupons = Coupon.all
    end
    
    def new
        @coupon = Coupon.new
        # byebug
    end

    def show
        @coupon = Coupon.find(params[:id])
        # byebug
    end

    def create 
        @coupon = Coupon.create(allowed_params)
        # byebug
        @coupon.save
        redirect_to coupon_path(@coupon)
    end

    private

    def allowed_params
        params.require(:coupon).permit(:coupon_code, :store)
    end
end
