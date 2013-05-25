require 'test_helper'

class RegisterControllerTest < ActionController::TestCase
  test "should get first_name:string" do
    get :first_name:string
    assert_response :success
  end

  test "should get last_name:string" do
    get :last_name:string
    assert_response :success
  end

  test "should get photo_url:string" do
    get :photo_url:string
    assert_response :success
  end

  test "should get location:string" do
    get :location:string
    assert_response :success
  end

end
