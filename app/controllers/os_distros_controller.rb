class OsDistrosController < ApplicationController
  before_action :set_os_distro, only: [:show, :edit, :update, :destroy]

  # GET /os_distros
  # GET /os_distros.json
  def index
    @os_distros = OsDistro.all
  end

  # GET /os_distros/1
  # GET /os_distros/1.json
  def show
  end

  # GET /os_distros/new
  def new
    @os_distro = OsDistro.new
  end

  # GET /os_distros/1/edit
  def edit
  end

  # POST /os_distros
  # POST /os_distros.json
  def create
    @os_distro = OsDistro.new(os_distro_params)

    respond_to do |format|
      if @os_distro.save
        format.html { redirect_to @os_distro, notice: 'Os distro was successfully created.' }
        format.json { render :show, status: :created, location: @os_distro }
      else
        format.html { render :new }
        format.json { render json: @os_distro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /os_distros/1
  # PATCH/PUT /os_distros/1.json
  def update
    respond_to do |format|
      if @os_distro.update(os_distro_params)
        format.html { redirect_to @os_distro, notice: 'Os distro was successfully updated.' }
        format.json { render :show, status: :ok, location: @os_distro }
      else
        format.html { render :edit }
        format.json { render json: @os_distro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /os_distros/1
  # DELETE /os_distros/1.json
  def destroy
    @os_distro.destroy
    respond_to do |format|
      format.html { redirect_to os_distros_url, notice: 'Os distro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_os_distro
      @os_distro = OsDistro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def os_distro_params
      params.require(:os_distro).permit(:codename, :version, :support_expiration_date, :remarks)
    end
end
