class CompanyformsController < ApplicationController
  before_action :set_companyform, only: [:show, :edit, :update, :destroy]

  # GET /companyforms
  # GET /companyforms.json
  def index
    @companyforms = Companyform.all
  end

  # GET /companyforms/1
  # GET /companyforms/1.json
  def show
  end

  # GET /companyforms/new
  def new
    @companyform = Companyform.new
  end

  # GET /companyforms/1/edit
  def edit
  end

  # POST /companyforms
  # POST /companyforms.json
  def create
    @companyform = Companyform.new(companyform_params)

    respond_to do |format|
      if @companyform.save
        format.html { redirect_to @companyform, notice: 'Companyform was successfully created.' }
        format.json { render :show, status: :created, location: @companyform }
      else
        format.html { render :new }
        format.json { render json: @companyform.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /companyforms/1
  # PATCH/PUT /companyforms/1.json
  def update
    respond_to do |format|
      if @companyform.update(companyform_params)
        format.html { redirect_to @companyform, notice: 'Companyform was successfully updated.' }
        format.json { render :show, status: :ok, location: @companyform }
      else
        format.html { render :edit }
        format.json { render json: @companyform.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /companyforms/1
  # DELETE /companyforms/1.json
  def destroy
    @companyform.destroy
    respond_to do |format|
      format.html { redirect_to companyforms_url, notice: 'Companyform was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_companyform
      @companyform = Companyform.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def companyform_params
      params.require(:companyform).permit(:name, :attachment, :companydoc_id)
    end
end
