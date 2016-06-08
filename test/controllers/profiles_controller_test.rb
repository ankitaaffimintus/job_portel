require 'test_helper'

class ProfilesControllerTest < ActionController::TestCase
  setup do
    @profile = profiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:profiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create profile" do
    assert_difference('Profile.count') do
      post :create, profile: { mark_10th: @profile.mark_10th, mark_12th: @profile.mark_12th, address: @profile.address, contact: @profile.contact, gra_mark: @profile.gra_mark, graduation: @profile.graduation, name: @profile.name, post_gra_mark: @profile.post_gra_mark, post_graduation: @profile.post_graduation }
    end

    assert_redirected_to profile_path(assigns(:profile))
  end

  test "should show profile" do
    get :show, id: @profile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @profile
    assert_response :success
  end

  test "should update profile" do
    patch :update, id: @profile, profile: {mark_10th: @profile.mark_10th, mark_12th: @profile.mark_12th, address: @profile.address, contact: @profile.contact, gra_mark: @profile.gra_mark, graduation: @profile.graduation, name: @profile.name, post_gra_mark: @profile.post_gra_mark, post_graduation: @profile.post_graduation }
    assert_redirected_to profile_path(assigns(:profile))
  end

  test "should destroy profile" do
    assert_difference('Profile.count', -1) do
      delete :destroy, id: @profile
    end

    assert_redirected_to profiles_path
  end
end
