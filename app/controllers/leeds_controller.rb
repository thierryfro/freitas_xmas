class LeedsController < ApplicationController
  def home
  end

  def index
    @leeds = Leed.all
  end
end
