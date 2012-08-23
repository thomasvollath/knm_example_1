class PagesController < ApplicationController
  def index
    @products = Product.find(:all, :limit => 50)
    # @products = Product.all
  end

  def about
  end
end
