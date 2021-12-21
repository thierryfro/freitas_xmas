class LeedsController < ApplicationController
  protect_from_forgery only: :create_leed
  before_action :authenticate_user!, only: [:overview]

  def home
    @gifts = Gift.where('quantity > ?', 0)
  end

  def thanks
  end

  def overview
    @leeds = Leed.all
  end

  def create_leed
    byebug
    leed = Leed.new(gift_id: params['gift'], first_name: params['name'], address: params['address'], birthday: params['birthday'])
    gift = Gift.find(leed.gift_id)
    # byebug
    leed.save
  end

  def index
    @leeds = Leed.all
  end
end
