class PclassesController < ApplicationController
  def index
    @pclasses = Pclass.all
    respond_to do |format|
      format.html
      format.xml { render xml: @pclasses }
      format.json { render json: @pclasses }
    end
  end

  def show
    @pclass = Pclass.find(params[:id])
  end

  def new
    @pclass = Pclass.new
  end

  def edit
    @pclass = Pclass.find(params[:id])
  end

  def create
    @pclass = Pclass.new(params[:pclass])
    if @pclass.save
      redirect_to new_pclass_path, notice: 'Pclass was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    @pclass = Pclass.find(params[:id])
    if @pclass.update_attributes(params[:pclass])
      redirect_to @pclass, notice: 'Pclass was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @pclass = Pclass.find(params[:id])
    @pclass.destroy
    redirect_to pclasses_url
  end
end
