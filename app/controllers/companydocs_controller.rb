class CompanydocsController < ApplicationController
  before_action :set_companydoc, only: [:show, :edit, :update, :destroy]

  # GET /companydocs
  # GET /companydocs.json
  def index
    @companydocs = Companydoc.all
  end

  # GET /companydocs/1
  # GET /companydocs/1.json
  def show
  end

  # GET /companydocs/new
  def new
    @companydoc = Companydoc.new
  end

  # GET /companydocs/1/edit
  def edit
  end

  # POST /companydocs
  # POST /companydocs.json
  def create
    @companydoc = Companydoc.new(companydoc_params)

    respond_to do |format|
      if @companydoc.save
        format.html { redirect_to @companydoc, notice: 'Companydoc was successfully created.' }
        format.json { render :show, status: :created, location: @companydoc }
      else
        format.html { render :new }
        format.json { render json: @companydoc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /companydocs/1
  # PATCH/PUT /companydocs/1.json
  def update
    respond_to do |format|
      if @companydoc.update(companydoc_params)
        format.html { redirect_to @companydoc, notice: 'Companydoc was successfully updated.' }
        format.json { render :show, status: :ok, location: @companydoc }
      else
        format.html { render :edit }
        format.json { render json: @companydoc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /companydocs/1
  # DELETE /companydocs/1.json
  def destroy
    @companydoc.destroy
    respond_to do |format|
      format.html { redirect_to companydocs_url, notice: 'Companydoc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_companydoc
      @companydoc = Companydoc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def companydoc_params
      params.fetch(:companydoc, {})
    end
end
