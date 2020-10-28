class CouponController < ApplicationController

    def home
        render "home"
    end 

    def index
       @coupons = Coupon.all 
    end 

    def show 
        @coupon = Coupon.find(params[:id])
        render "show"
    end 

    def new
        render "new"
    end 

    def create
        new_coupon = Coupon.create(store: params[:store], coupon_code: params[:coupon_code])
        redirect_to coupon_path(new_coupon.id)
    end 

end
