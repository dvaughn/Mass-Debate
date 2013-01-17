require 'test_helper'

class DebatesControllerTest < ActionController::TestCase
  test "should get create" do
    get :create
    assert_response :success
  end

  test "should get join" do
    get :join
    assert_response :success
  end

  test "should get start" do
    get :start
    assert_response :success
  end

  test "should get end" do
    get :end
    assert_response :success
  end

  test "should get upvote" do
    get :upvote
    assert_response :success
  end

  test "should get report" do
    get :report
    assert_response :success
  end

  test "should get extend" do
    get :extend
    assert_response :success
  end

  test "should get invite" do
    get :invite
    assert_response :success
  end

end
