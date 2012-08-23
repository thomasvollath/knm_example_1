class ProductsController < ApplicationController
  def index
    @products = Product.find(:all, :limit => 20)

    require 'net/http'
    require 'xmlsimple'
    url = URI.parse('http://www.kmtire.com/api/inventory')
    request = Net::HTTP::Post.new(url.path)
    request.body =  '<?xml version="1.0" encoding="utf-8"?>'+
                    '<InventoryRequest>'+
                      '<Credentials>'+
                        '<APIKey>abcdef123456</APIKey>'+
                      '</Credentials>'

    @products.each do |p|
      request.body = request.body +
                      '<Item>'+
                        '<PartNumber>'+p.number.strip+'</PartNumber>'+
                        '<VendorName></VendorName>'+
                      '</Item>'
    end
    request.body = request.body +
                    '</InventoryRequest>';
    response = Net::HTTP.start(url.host, url.port) { |http| http.request(request) }
    # raise response.to_yaml
    xml = XmlSimple.xml_in(response.body)
    # raise xml.to_yaml

    xml['Item'].each do |x|
      @products.each do |p|
        if p.number.strip == x['PartNumber'][0]
          p.quantity = x['Quantity'][0]['National'][0]
          p.cost = x['Cost'][0]
        end
      end
    end

    respond_to do |format|
      format.html
      format.xml { render xml: @products }
      format.json { render json: @products }
    end
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def edit
    @product = Product.find(params[:id])
  end

  def create
    @product = Product.new(params[:product])
    if @product.save
      redirect_to @product, notice: 'Product was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    @product = Product.find(params[:id])
    if @product.update_attributes(params[:product])
      redirect_to @product, notice: 'Product was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_url
  end
end
