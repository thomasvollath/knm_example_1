class StoresController < ApplicationController
  def index
    @stores = Store.find(:all, :order => :number)
    respond_to do |format|
      format.html
      format.xml { render xml: @stores }
      format.json { render json: @stores }
      # format.pdf { render pdf: @stores }
    end
  end

  def show
    @store = Store.find_by_id(params[:id])
  end

  def new
    @store = Store.new
  end

  def edit
    @store = Store.find_by_id(params[:id])
  end

  def create
    @store = Store.new(params[:store])
    if @store.save
      redirect_to new_store_path, notice: 'Store was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    @store = Store.find(params[:id])
    if @store.update_attributes(params[:store])
      redirect_to @store, notice: 'Store was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @store = Store.find(params[:id])
    @store.destroy
    redirect_to stores_url
  end
end
