class BugreporTsController < ApplicationController
  before_action :set_bugreport, only: [:show, :edit, :update, :destroy]

  # GET /bugreports
  # GET /bugreports.json
  def index
    @bugreports = Bugreport.all
  end

  # GET /bugreports/1
  # GET /bugreports/1.json
  def show
  end

  # GET /bugreports/new
  def new
    @bugreport = Bugreport.new
  end

  # GET /bugreports/1/edit
  def edit
  end

  # POST /bugreports
  # POST /bugreports.json
  def create
    @bugreport = Bugreport.new(bugreport_params)

    respond_to do |format|
      if @bugreport.save
        format.html { redirect_to @bugreport, notice: 'Bugreport was successfully created.' }
        format.json { render :show, status: :created, location: @bugreport }
      else
        format.html { render :new }
        format.json { render json: @bugreport.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bugreports/1
  # PATCH/PUT /bugreports/1.json
  def update
    respond_to do |format|
      if @bugreport.update(bugreport_params)
        format.html { redirect_to @bugreport, notice: 'Bugreport was successfully updated.' }
        format.json { render :show, status: :ok, location: @bugreport }
      else
        format.html { render :edit }
        format.json { render json: @bugreport.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bugreports/1
  # DELETE /bugreports/1.json
  def destroy
    @bugreport.destroy
    respond_to do |format|
      format.html { redirect_to bugreports_url, notice: 'Bugreport was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bugreport
      @bugreport = Bugreport.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bugreport_params
      params.require(:bugreport).permit(:title, :body)
    end
end
