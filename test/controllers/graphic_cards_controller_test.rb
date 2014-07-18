require 'test_helper'

class GraphicCardsControllerTest < ActionController::TestCase
  setup do
    @graphic_card = graphic_cards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:graphic_cards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create graphic_card" do
    assert_difference('GraphicCard.count') do
      post :create, graphic_card: { compatible3d: @graphic_card.compatible3d, manufacturer: @graphic_card.manufacturer, model: @graphic_card.model, remarks: @graphic_card.remarks }
    end

    assert_redirected_to graphic_card_path(assigns(:graphic_card))
  end

  test "should show graphic_card" do
    get :show, id: @graphic_card
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @graphic_card
    assert_response :success
  end

  test "should update graphic_card" do
    patch :update, id: @graphic_card, graphic_card: { compatible3d: @graphic_card.compatible3d, manufacturer: @graphic_card.manufacturer, model: @graphic_card.model, remarks: @graphic_card.remarks }
    assert_redirected_to graphic_card_path(assigns(:graphic_card))
  end

  test "should destroy graphic_card" do
    assert_difference('GraphicCard.count', -1) do
      delete :destroy, id: @graphic_card
    end

    assert_redirected_to graphic_cards_path
  end
end
