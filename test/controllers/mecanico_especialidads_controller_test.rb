require 'test_helper'

class MecanicoEspecialidadsControllerTest < ActionController::TestCase
  setup do
    @mecanico_especialidad = mecanico_especialidads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mecanico_especialidads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mecanico_especialidad" do
    assert_difference('MecanicoEspecialidad.count') do
      post :create, mecanico_especialidad: { especialidad_id: @mecanico_especialidad.especialidad_id, mecanico_id: @mecanico_especialidad.mecanico_id }
    end

    assert_redirected_to mecanico_especialidad_path(assigns(:mecanico_especialidad))
  end

  test "should show mecanico_especialidad" do
    get :show, id: @mecanico_especialidad
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mecanico_especialidad
    assert_response :success
  end

  test "should update mecanico_especialidad" do
    patch :update, id: @mecanico_especialidad, mecanico_especialidad: { especialidad_id: @mecanico_especialidad.especialidad_id, mecanico_id: @mecanico_especialidad.mecanico_id }
    assert_redirected_to mecanico_especialidad_path(assigns(:mecanico_especialidad))
  end

  test "should destroy mecanico_especialidad" do
    assert_difference('MecanicoEspecialidad.count', -1) do
      delete :destroy, id: @mecanico_especialidad
    end

    assert_redirected_to mecanico_especialidads_path
  end
end
