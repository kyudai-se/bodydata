class BodydataController < ApplicationController
  before_action :set_bodydatum, only: [:show, :edit, :update, :destroy]

  # GET /bodydata
  # GET /bodydata.json
  def index
    @bodydata = Bodydatum.all
  end

  # GET /bodydata/1
  # GET /bodydata/1.json
  def show
  end

  # GET /bodydata/new
  def new
    @bodydatum = Bodydatum.new
  end

  # GET /bodydata/1/edit
  def edit
  end

  # POST /bodydata
  # POST /bodydata.json
  def create
    @bodydatum = Bodydatum.new(bodydatum_params)
    @bodydatum.height = @bodydatum.height.round(2)
    @bodydatum.weight = @bodydatum.weight.round(1)
    respond_to do |format|
      if @bodydatum.save
        format.html { redirect_to @bodydatum, notice: 'Bodydatum was successfully created.' }
        format.json { render action: 'show', status: :created, location: @bodydatum }
      else
        format.html { render action: 'new' }
        format.json { render json: @bodydatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bodydata/1
  # PATCH/PUT /bodydata/1.json
  def update
    @bodydatum.height = @bodydatum.height.round(2)
    @bodydatum.weight = @bodydatum.weight.round(1)
    respond_to do |format|
      if @bodydatum.update(bodydatum_params)
        format.html { redirect_to @bodydatum, notice: 'Bodydatum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @bodydatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bodydata/1
  # DELETE /bodydata/1.json
  def destroy
    @bodydatum.destroy
    respond_to do |format|
      format.html { redirect_to bodydata_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bodydatum
      @bodydatum = Bodydatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bodydatum_params
      params.require(:bodydatum).permit(:name, :weight, :height)
    end
end
