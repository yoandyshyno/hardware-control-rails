class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :destroy]

  # GET /reviews
  # GET /reviews.json
  def index
    @workstations = Workstation.all
    @monitors = WorkstationMonitor.all
    @graphic_cards = GraphicCard.all
    @os_distros = OsDistro.all
    @reviews = Review.all

    @item_test2 = Review.where("workstation_id = ?", 2)

    @item_test = @reviews.map do |item|
      { item.workstation_id =>
      [
        item.created_at.to_formatted_s(:short),
        @monitors.find(item.monitor1).brand + "\n" + @monitors.find(item.monitor2).brand,
        item.hardware,
        @graphic_cards.find(item.graphic_card_id).model,
        "Ubuntu\n" + @os_distros.find(item.os_distro_id).version,
        item.remarks
      ]}
    end

    prawnto :prawn => { :page_size => "A4", :layout => :portrait }

  end

  # GET /reviews/1
  # GET /reviews/1.json
  def show
  end

  # GET /reviews/new
  def new
    @review = Review.new
  end

  # GET /reviews/1/edit
  def edit
  end

  # POST /reviews
  # POST /reviews.json
  def create
    @review = Review.new(review_params)

    respond_to do |format|
      if @review.save
        format.html { redirect_to @review, notice: 'Review was successfully created.' }
        format.json { render :show, status: :created, location: @review }
      else
        format.html { render :new }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reviews/1
  # PATCH/PUT /reviews/1.json
  def update
    respond_to do |format|
      if @review.update(review_params)
        format.html { redirect_to @review, notice: 'Review was successfully updated.' }
        format.json { render :show, status: :ok, location: @review }
      else
        format.html { render :edit }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reviews/1
  # DELETE /reviews/1.json
  def destroy
    @review.destroy
    respond_to do |format|
      format.html { redirect_to reviews_url, notice: 'Review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_review
      @review = Review.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def review_params
      params.require(:review).permit(:workstation_id, :monitor1, :monitor2, :monitor3, :hardware, :graphic_card_id, :os_distro_id, :remarks)
    end
end
