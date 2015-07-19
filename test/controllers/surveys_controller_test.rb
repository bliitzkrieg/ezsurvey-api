require 'test_helper'

class SurveysControllerTest < ActionController::TestCase
  setup do
    @survey = surveys(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:surveys)
  end

  test "should create survey" do
    assert_difference('Survey.count') do
      post :create, survey: { account_only: @survey.account_only, password_protected: @survey.password_protected, unique_ip: @survey.unique_ip }
    end

    assert_response 201
  end

  test "should show survey" do
    get :show, id: @survey
    assert_response :success
  end

  test "should update survey" do
    put :update, id: @survey, survey: { account_only: @survey.account_only, password_protected: @survey.password_protected, unique_ip: @survey.unique_ip }
    assert_response 204
  end

  test "should destroy survey" do
    assert_difference('Survey.count', -1) do
      delete :destroy, id: @survey
    end

    assert_response 204
  end
end
