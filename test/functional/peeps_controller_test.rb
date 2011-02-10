require 'test_helper'

class PeepsControllerTest < ActionController::TestCase
  setup do
    @peep = peeps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:peeps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create peep" do
    assert_difference('Peep.count') do
      post :create, :peep => @peep.attributes
    end

    assert_redirected_to peep_path(assigns(:peep))
  end

  test "should show peep" do
    get :show, :id => @peep.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @peep.to_param
    assert_response :success
  end

  test "should update peep" do
    put :update, :id => @peep.to_param, :peep => @peep.attributes
    assert_redirected_to peep_path(assigns(:peep))
  end

  test "should destroy peep" do
    assert_difference('Peep.count', -1) do
      delete :destroy, :id => @peep.to_param
    end

    assert_redirected_to peeps_path
  end
end
