require 'test_helper'

class VediosControllerTest < ActionController::TestCase
  setup do
    @vedio = vedios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vedios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vedio" do
    assert_difference('Vedio.count') do
      post :create, vedio: { vname: @vedio.vname }
    end

    assert_redirected_to vedio_path(assigns(:vedio))
  end

  test "should show vedio" do
    get :show, id: @vedio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vedio
    assert_response :success
  end

  test "should update vedio" do
    put :update, id: @vedio, vedio: { vname: @vedio.vname }
    assert_redirected_to vedio_path(assigns(:vedio))
  end

  test "should destroy vedio" do
    assert_difference('Vedio.count', -1) do
      delete :destroy, id: @vedio
    end

    assert_redirected_to vedios_path
  end
end
