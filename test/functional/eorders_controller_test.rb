require 'test_helper'

class EordersControllerTest < ActionController::TestCase
  setup do
    @eorder = eorders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:eorders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create eorder" do
    assert_difference('Eorder.count') do
      post :create, eorder: { eapplicant: @eorder.eapplicant, eartopinion: @eorder.eartopinion, ekeeper: @eorder.ekeeper, ereturntime: @eorder.ereturntime, esituation: @eorder.esituation, etel: @eorder.etel, eusereason: @eorder.eusereason, eusetime: @eorder.eusetime }
    end

    assert_redirected_to eorder_path(assigns(:eorder))
  end

  test "should show eorder" do
    get :show, id: @eorder
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @eorder
    assert_response :success
  end

  test "should update eorder" do
    put :update, id: @eorder, eorder: { eapplicant: @eorder.eapplicant, eartopinion: @eorder.eartopinion, ekeeper: @eorder.ekeeper, ereturntime: @eorder.ereturntime, esituation: @eorder.esituation, etel: @eorder.etel, eusereason: @eorder.eusereason, eusetime: @eorder.eusetime }
    assert_redirected_to eorder_path(assigns(:eorder))
  end

  test "should destroy eorder" do
    assert_difference('Eorder.count', -1) do
      delete :destroy, id: @eorder
    end

    assert_redirected_to eorders_path
  end
end
