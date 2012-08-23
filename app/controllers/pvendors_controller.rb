class PvendorsController < ApplicationController
  # GET /pvendors
  # GET /pvendors.json
  def index
    @pvendors = Pvendor.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pvendors }
    end
  end

  # GET /pvendors/1
  # GET /pvendors/1.json
  def show
    @pvendor = Pvendor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pvendor }
    end
  end

  # GET /pvendors/new
  # GET /pvendors/new.json
  def new
    @pvendor = Pvendor.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pvendor }
    end
  end

  # GET /pvendors/1/edit
  def edit
    @pvendor = Pvendor.find(params[:id])
  end

  # POST /pvendors
  # POST /pvendors.json
  def create
    @pvendor = Pvendor.new(params[:pvendor])

    respond_to do |format|
      if @pvendor.save
        format.html { redirect_to @pvendor, notice: 'Pvendor was successfully created.' }
        format.json { render json: @pvendor, status: :created, location: @pvendor }
      else
        format.html { render action: "new" }
        format.json { render json: @pvendor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pvendors/1
  # PUT /pvendors/1.json
  def update
    @pvendor = Pvendor.find(params[:id])

    respond_to do |format|
      if @pvendor.update_attributes(params[:pvendor])
        format.html { redirect_to @pvendor, notice: 'Pvendor was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pvendor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pvendors/1
  # DELETE /pvendors/1.json
  def destroy
    @pvendor = Pvendor.find(params[:id])
    @pvendor.destroy

    respond_to do |format|
      format.html { redirect_to pvendors_url }
      format.json { head :no_content }
    end
  end
end
