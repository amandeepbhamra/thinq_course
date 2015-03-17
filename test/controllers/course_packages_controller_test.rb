require 'test_helper'

class CoursePackagesControllerTest < ActionController::TestCase
  setup do
    @course_package = course_packages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:course_packages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create course_package" do
    assert_difference('CoursePackage.count') do
      post :create, course_package: { description: @course_package.description, slideshow: @course_package.slideshow, title: @course_package.title, video: @course_package.video }
    end

    assert_redirected_to course_package_path(assigns(:course_package))
  end

  test "should show course_package" do
    get :show, id: @course_package
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @course_package
    assert_response :success
  end

  test "should update course_package" do
    patch :update, id: @course_package, course_package: { description: @course_package.description, slideshow: @course_package.slideshow, title: @course_package.title, video: @course_package.video }
    assert_redirected_to course_package_path(assigns(:course_package))
  end

  test "should destroy course_package" do
    assert_difference('CoursePackage.count', -1) do
      delete :destroy, id: @course_package
    end

    assert_redirected_to course_packages_path
  end
end
