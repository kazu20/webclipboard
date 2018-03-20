class FusensController < ApplicationController
  before_action :set_fusen, only: [:show, :edit, :update, :destroy]

  # GET /fusens
  # GET /fusens.json
  def index
    @fusens = Fusen.all
    @fusen = Fusen.new
  end

  # GET /fusens/1
  # GET /fusens/1.json
  def show
   redirect_to action: 'index'
  end

  # GET /fusens/new
  def new
    @fusen = Fusen.new
  end

  # GET /fusens/1/edit
  def edit
  end

  # POST /fusens
  # POST /fusens.json
  def create
    @fusen = Fusen.new(fusen_params)
    @fusen.dom_height = 120
    @fusen.dom_width = 240

    respond_to do |format|
      if @fusen.save
        format.html { redirect_to @fusen, notice: 'Fusen was successfully created.' }
        format.json { render :show, status: :created, location: @fusen }
      else
        format.html { render :new }
        format.json { render json: @fusen.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fusens/1
  # PATCH/PUT /fusens/1.json
  def update
    respond_to do |format|
      if @fusen.update(fusen_params)
        format.html { redirect_to @fusen, notice: 'Fusen was successfully updated.' }
        format.json { render :show, status: :ok, location: @fusen }
      else
        format.html { render :edit }
        format.json { render json: @fusen.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fusens/1
  # DELETE /fusens/1.json
  def destroy
    @fusen.destroy
    respond_to do |format|
      format.html { redirect_to fusens_url, notice: 'Fusen was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fusen
      @fusen = Fusen.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fusen_params
      params.require(:fusen).permit(:title, :message, :top, :left, :dom_height, :dom_width)
    end
end
