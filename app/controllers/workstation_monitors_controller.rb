class WorkstationMonitorsController < ApplicationController
  before_action :set_workstation_monitor, only: [:show, :edit, :update, :destroy]

  # GET /workstation_monitors
  # GET /workstation_monitors.json
  def index
    @workstation_monitors = WorkstationMonitor.all
  end

  # GET /workstation_monitors/1
  # GET /workstation_monitors/1.json
  def show
  end

  # GET /workstation_monitors/new
  def new
    @workstation_monitor = WorkstationMonitor.new
  end

  # GET /workstation_monitors/1/edit
  def edit
  end

  # POST /workstation_monitors
  # POST /workstation_monitors.json
  def create
    @workstation_monitor = WorkstationMonitor.new(workstation_monitor_params)

    respond_to do |format|
      if @workstation_monitor.save
        format.html { redirect_to @workstation_monitor, notice: 'Workstation monitor was successfully created.' }
        format.json { render :show, status: :created, location: @workstation_monitor }
      else
        format.html { render :new }
        format.json { render json: @workstation_monitor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /workstation_monitors/1
  # PATCH/PUT /workstation_monitors/1.json
  def update
    respond_to do |format|
      if @workstation_monitor.update(workstation_monitor_params)
        format.html { redirect_to @workstation_monitor, notice: 'Workstation monitor was successfully updated.' }
        format.json { render :show, status: :ok, location: @workstation_monitor }
      else
        format.html { render :edit }
        format.json { render json: @workstation_monitor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /workstation_monitors/1
  # DELETE /workstation_monitors/1.json
  def destroy
    @workstation_monitor.destroy
    respond_to do |format|
      format.html { redirect_to workstation_monitors_url, notice: 'Workstation monitor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_workstation_monitor
      @workstation_monitor = WorkstationMonitor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def workstation_monitor_params
      params.require(:workstation_monitor).permit(:brand, :size, :resolution_width, :resolution_hight, :remarks)
    end
end
