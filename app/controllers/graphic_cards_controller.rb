class GraphicCardsController < ApplicationController
  before_action :set_graphic_card, only: [:show, :edit, :update, :destroy]

  # GET /graphic_cards
  # GET /graphic_cards.json
  def index
    @graphic_cards = GraphicCard.all
  end

  # GET /graphic_cards/1
  # GET /graphic_cards/1.json
  def show
  end

  # GET /graphic_cards/new
  def new
    @graphic_card = GraphicCard.new
  end

  # GET /graphic_cards/1/edit
  def edit
  end

  # POST /graphic_cards
  # POST /graphic_cards.json
  def create
    @graphic_card = GraphicCard.new(graphic_card_params)

    respond_to do |format|
      if @graphic_card.save
        format.html { redirect_to @graphic_card, notice: 'Graphic card was successfully created.' }
        format.json { render :show, status: :created, location: @graphic_card }
      else
        format.html { render :new }
        format.json { render json: @graphic_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /graphic_cards/1
  # PATCH/PUT /graphic_cards/1.json
  def update
    respond_to do |format|
      if @graphic_card.update(graphic_card_params)
        format.html { redirect_to @graphic_card, notice: 'Graphic card was successfully updated.' }
        format.json { render :show, status: :ok, location: @graphic_card }
      else
        format.html { render :edit }
        format.json { render json: @graphic_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /graphic_cards/1
  # DELETE /graphic_cards/1.json
  def destroy
    @graphic_card.destroy
    respond_to do |format|
      format.html { redirect_to graphic_cards_url, notice: 'Graphic card was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_graphic_card
      @graphic_card = GraphicCard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def graphic_card_params
      params.require(:graphic_card).permit(:model, :manufacturer, :compatible3d, :remarks)
    end
end
