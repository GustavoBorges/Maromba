require 'test_helper'

class SuplementosControllerTest < ActionController::TestCase
  setup do
    @suplemento = suplementos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:suplementos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create suplemento" do
    assert_difference('Suplemento.count') do
      post :create, suplemento: { link: @suplemento.link, marca: @suplemento.marca, nome: @suplemento.nome }
    end

    assert_redirected_to suplemento_path(assigns(:suplemento))
  end

  test "should show suplemento" do
    get :show, id: @suplemento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @suplemento
    assert_response :success
  end

  test "should update suplemento" do
    patch :update, id: @suplemento, suplemento: { link: @suplemento.link, marca: @suplemento.marca, nome: @suplemento.nome }
    assert_redirected_to suplemento_path(assigns(:suplemento))
  end

  test "should destroy suplemento" do
    assert_difference('Suplemento.count', -1) do
      delete :destroy, id: @suplemento
    end

    assert_redirected_to suplementos_path
  end
end
