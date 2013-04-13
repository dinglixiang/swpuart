require 'test_helper'

class SordersControllerTest < ActionController::TestCase
  setup do
    @sorder = sorders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sorders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sorder" do
    assert_difference('Sorder.count') do
      post :create, sorder: { sapplicant: @sorder.sapplicant, skeeper: @sorder.skeeper, sname: @sorder.sname, sopinion: @sorder.sopinion, sreturntime: @sorder.sreturntime, ssituation: @sorder.ssituation, stel: @sorder.stel, susereason: @sorder.susereason, susetime: @sorder.susetime }
    end

    assert_redirected_to sorder_path(assigns(:sorder))
  end

  test "should show sorder" do
    get :show, id: @sorder
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sorder
    assert_response :success
  end

  test "should update sorder" do
    put :update, id: @sorder, sorder: { sapplicant: @sorder.sapplicant, skeeper: @sorder.skeeper, sname: @sorder.sname, sopinion: @sorder.sopinion, sreturntime: @sorder.sreturntime, ssituation: @sorder.ssituation, stel: @sorder.stel, susereason: @sorder.susereason, susetime: @sorder.susetime }
    assert_redirected_to sorder_path(assigns(:sorder))
  end

  test "should destroy sorder" do
    assert_difference('Sorder.count', -1) do
      delete :destroy, id: @sorder
    end

    assert_redirected_to sorders_path
  end
end
