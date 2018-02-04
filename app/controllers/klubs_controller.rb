class KlubsController < ApplicationController
  before_action :set_klub, only: [:show, :edit, :update, :destroy]

  # GET /klubs
  # GET /klubs.json
  def index
    @klubs = Klub.all
  end

  # GET /klubs/1
  # GET /klubs/1.json
  def show
  end

  # GET /klubs/new
  def new
    @klub = Klub.new
  end

  # GET /klubs/1/edit
  def edit
  end

  # POST /klubs
  # POST /klubs.json
  def create
    @klub = Klub.new(klub_params)

    respond_to do |format|
      if @klub.save
        format.html { redirect_to @klub, notice: 'Klub was successfully created.' }
        format.json { render :show, status: :created, location: @klub }
      else
        format.html { render :new }
        format.json { render json: @klub.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /klubs/1
  # PATCH/PUT /klubs/1.json
  def update
    respond_to do |format|
      if @klub.update(klub_params)
        format.html { redirect_to @klub, notice: 'Klub was successfully updated.' }
        format.json { render :show, status: :ok, location: @klub }
      else
        format.html { render :edit }
        format.json { render json: @klub.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /klubs/1
  # DELETE /klubs/1.json
  def destroy
    @klub.destroy
    respond_to do |format|
      format.html { redirect_to klubs_url, notice: 'Klub was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_klub
      @klub = Klub.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def klub_params
      params.require(:klub).permit(:name, :city, :position)
    end
end
