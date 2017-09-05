class CouponsController < ApplicationController

  def create
    @coupon = Coupon.new
    @coupon.coupon_code = params[:coupon_code]
    @coupon.store = params[:store]
    @coupon.save
    #red's to show - id of coupon
    redirect_to coupon_path(@coupon)
  end

  def new
  end

  def index
    @coupons = Coupon.all
  end

  def show
    @coupon = Coupon.find(params[:id])
  end


end
