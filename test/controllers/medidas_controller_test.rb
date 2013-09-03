require 'test_helper'

class MedidasControllerTest < ActionController::TestCase
  setup do
    @medida = medidas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:medidas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create medida" do
    assert_difference('Medida.count') do
      post :create, medida: { abdomem: @medida.abdomem, braco_direito: @medida.braco_direito, braco_esquerdo: @medida.braco_esquerdo, cintura: @medida.cintura, coxa_direita: @medida.coxa_direita, coxa_esquerda: @medida.coxa_esquerda, ombro: @medida.ombro, panturrilha_direita: @medida.panturrilha_direita, panturrilha_esquerda: @medida.panturrilha_esquerda, quadril: @medida.quadril, torax: @medida.torax }
    end

    assert_redirected_to medida_path(assigns(:medida))
  end

  test "should show medida" do
    get :show, id: @medida
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @medida
    assert_response :success
  end

  test "should update medida" do
    patch :update, id: @medida, medida: { abdomem: @medida.abdomem, braco_direito: @medida.braco_direito, braco_esquerdo: @medida.braco_esquerdo, cintura: @medida.cintura, coxa_direita: @medida.coxa_direita, coxa_esquerda: @medida.coxa_esquerda, ombro: @medida.ombro, panturrilha_direita: @medida.panturrilha_direita, panturrilha_esquerda: @medida.panturrilha_esquerda, quadril: @medida.quadril, torax: @medida.torax }
    assert_redirected_to medida_path(assigns(:medida))
  end

  test "should destroy medida" do
    assert_difference('Medida.count', -1) do
      delete :destroy, id: @medida
    end

    assert_redirected_to medidas_path
  end
end
