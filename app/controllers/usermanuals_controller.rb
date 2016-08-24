class UsermanualsController < ApplicationController

  #->Prelang (scaffolding:rails/scope_to_user)
  before_filter :require_user_signed_in, only: [:new, :edit, :create, :update, :destroy]

  before_action :set_usermanual, only: [:show, :edit, :update, :destroy]

  # GET /usermanuals
  # GET /usermanuals.json
  def index
    @usermanuals = Usermanual.all
  end

  # GET /usermanuals/1
  # GET /usermanuals/1.json
  def show
  end

  # GET /usermanuals/new
  def new
    @usermanual = Usermanual.new
  end

  # GET /usermanuals/1/edit
  def edit
  end

  # POST /usermanuals
  # POST /usermanuals.json
  def create
    @usermanual = Usermanual.new(usermanual_params)

    respond_to do |format|
      if @usermanual.save
        format.html { redirect_to @usermanual, notice: 'Usermanual was successfully created.' }
        format.json { render :show, status: :created, location: @usermanual }
      else
        format.html { render :new }
        format.json { render json: @usermanual.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /usermanuals/1
  # PATCH/PUT /usermanuals/1.json
  def update
    respond_to do |format|
      if @usermanual.update(usermanual_params)
        format.html { redirect_to @usermanual, notice: 'Usermanual was successfully updated.' }
        format.json { render :show, status: :ok, location: @usermanual }
      else
        format.html { render :edit }
        format.json { render json: @usermanual.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usermanuals/1
  # DELETE /usermanuals/1.json
  def destroy
    @usermanual.destroy
    respond_to do |format|
      format.html { redirect_to usermanuals_url, notice: 'Usermanual was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usermanual
      @usermanual = Usermanual.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def usermanual_params
      params.require(:usermanual).permit(:document_name, :document_type, :user_id)
    end
end
