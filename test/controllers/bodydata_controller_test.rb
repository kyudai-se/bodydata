require 'test_helper'

class BodydataControllerTest < ActionController::TestCase
  setup do
    @bodydatum = bodydata(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bodydata)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bodydatum" do
    assert_difference('Bodydatum.count') do
      post :create, bodydatum: { : @bodydatum., : @bodydatum., height: @bodydatum.height, weight: @bodydatum.weight }
    end

    assert_redirected_to bodydatum_path(assigns(:bodydatum))
  end

  test "should show bodydatum" do
    get :show, id: @bodydatum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bodydatum
    assert_response :success
  end

  test "should update bodydatum" do
    patch :update, id: @bodydatum, bodydatum: { : @bodydatum., : @bodydatum., height: @bodydatum.height, weight: @bodydatum.weight }
    assert_redirected_to bodydatum_path(assigns(:bodydatum))
  end

  test "should destroy bodydatum" do
    assert_difference('Bodydatum.count', -1) do
      delete :destroy, id: @bodydatum
    end

    assert_redirected_to bodydata_path
  end
end
