require 'test_helper'

class AlmacensControllerTest < ActionController::TestCase
  setup do
    @almacen = almacens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:almacens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create almacen" do
    assert_difference('Almacen.count') do
      post :create, almacen: { cantidad: @almacen.cantidad, cod: @almacen.cod, costo: @almacen.costo, nom: @almacen.nom }
    end

    assert_redirected_to almacen_path(assigns(:almacen))
  end

  test "should show almacen" do
    get :show, id: @almacen
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @almacen
    assert_response :success
  end

  test "should update almacen" do
    patch :update, id: @almacen, almacen: { cantidad: @almacen.cantidad, cod: @almacen.cod, costo: @almacen.costo, nom: @almacen.nom }
    assert_redirected_to almacen_path(assigns(:almacen))
  end

  test "should destroy almacen" do
    assert_difference('Almacen.count', -1) do
      delete :destroy, id: @almacen
    end

    assert_redirected_to almacens_path
  end
end
