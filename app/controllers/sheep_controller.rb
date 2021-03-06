class SheepController < ApplicationController
  before_action :set_sheep, only: [:show, :edit, :update, :destroy]

  # GET /sheep
  # GET /sheep.json
  def index
    @sheep = Sheep.all
  end

  # GET /sheep/1
  # GET /sheep/1.json
  def show
  end

  # GET /sheep/new
  def new
    @sheep = Sheep.new
  end

  # GET /sheep/1/edit
  def edit
  end

  # POST /sheep
  # POST /sheep.json
  def create
    @sheep = Sheep.new(sheep_params)

    respond_to do |format|
      if @sheep.save
        format.html { redirect_to @sheep, notice: 'Sheep was successfully created.' }
        format.json { render :show, status: :created, location: @sheep }
      else
        format.html { render :new }
        format.json { render json: @sheep.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sheep/1
  # PATCH/PUT /sheep/1.json
  def update
    respond_to do |format|
      if @sheep.update(sheep_params)
        format.html { redirect_to @sheep, notice: 'Sheep was successfully updated.' }
        format.json { render :show, status: :ok, location: @sheep }
      else
        format.html { render :edit }
        format.json { render json: @sheep.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sheep/1
  # DELETE /sheep/1.json
  def destroy
    @sheep.destroy
    respond_to do |format|
      format.html { redirect_to sheep_index_url, notice: 'Sheep was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sheep
      @sheep = Sheep.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sheep_params
      params.require(:sheep).permit(:description, :status, :priority)
    end
end
