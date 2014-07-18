class WorkstationsController < ApplicationController
  before_action :set_workstation, only: [:show, :edit, :update, :destroy]

  # GET /workstations
  # GET /workstations.json
  def index
    @workstations = Workstation.all
  end

  # GET /workstations/1
  # GET /workstations/1.json
  def show
  end

  # GET /workstations/new
  def new
    @workstation = Workstation.new
  end

  # GET /workstations/1/edit
  def edit
  end

  # POST /workstations
  # POST /workstations.json
  def create
    @workstation = Workstation.new(workstation_params)

    respond_to do |format|
      if @workstation.save
        format.html { redirect_to @workstation, notice: 'Workstation was successfully created.' }
        format.json { render :show, status: :created, location: @workstation }
      else
        format.html { render :new }
        format.json { render json: @workstation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /workstations/1
  # PATCH/PUT /workstations/1.json
  def update
    respond_to do |format|
      if @workstation.update(workstation_params)
        format.html { redirect_to @workstation, notice: 'Workstation was successfully updated.' }
        format.json { render :show, status: :ok, location: @workstation }
      else
        format.html { render :edit }
        format.json { render json: @workstation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /workstations/1
  # DELETE /workstations/1.json
  def destroy
    @workstation.destroy
    respond_to do |format|
      format.html { redirect_to workstations_url, notice: 'Workstation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_workstation
      @workstation = Workstation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def workstation_params
      params.require(:workstation).permit(:name, :user, :ip, :mac)
    end
end
