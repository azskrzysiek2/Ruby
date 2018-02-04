class TrofeumsController < ApplicationController
  before_action :set_trofeum, only: [:show, :edit, :update, :destroy]

  # GET /trofeums
  # GET /trofeums.json
  def index
    @trofeums = Trofeum.all
  end

  # GET /trofeums/1
  # GET /trofeums/1.json
  def show
  end

  # GET /trofeums/new
  def new
    @trofeum = Trofeum.new
  end

  # GET /trofeums/1/edit
  def edit
  end

  # POST /trofeums
  # POST /trofeums.json
  def create
    @trofeum = Trofeum.new(trofeum_params)

    respond_to do |format|
      if @trofeum.save
        format.html { redirect_to @trofeum, notice: 'Trofeum was successfully created.' }
        format.json { render :show, status: :created, location: @trofeum }
      else
        format.html { render :new }
        format.json { render json: @trofeum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trofeums/1
  # PATCH/PUT /trofeums/1.json
  def update
    respond_to do |format|
      if @trofeum.update(trofeum_params)
        format.html { redirect_to @trofeum, notice: 'Trofeum was successfully updated.' }
        format.json { render :show, status: :ok, location: @trofeum }
      else
        format.html { render :edit }
        format.json { render json: @trofeum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trofeums/1
  # DELETE /trofeums/1.json
  def destroy
    @trofeum.destroy
    respond_to do |format|
      format.html { redirect_to trofeums_url, notice: 'Trofeum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trofeum
      @trofeum = Trofeum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trofeum_params
      params.require(:trofeum).permit(:name, :value, :klub_id)
    end
end
