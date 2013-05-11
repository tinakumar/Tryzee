require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get how_it_works" do
    get :how_it_works
    assert_response :success
  end

  test "should get help" do
    get :help
    assert_response :success
  end

  test "should get start" do
    get :start
    assert_response :success
  end

end
