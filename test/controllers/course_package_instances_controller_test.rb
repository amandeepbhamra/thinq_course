require 'test_helper'

class CoursePackageInstancesControllerTest < ActionController::TestCase
  setup do
    @course_package_instance = course_package_instances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:course_package_instances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create course_package_instance" do
    assert_difference('CoursePackageInstance.count') do
      post :create, course_package_instance: { course_id: @course_package_instance.course_id, course_package_id: @course_package_instance.course_package_id, user_id: @course_package_instance.user_id }
    end

    assert_redirected_to course_package_instance_path(assigns(:course_package_instance))
  end

  test "should show course_package_instance" do
    get :show, id: @course_package_instance
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @course_package_instance
    assert_response :success
  end

  test "should update course_package_instance" do
    patch :update, id: @course_package_instance, course_package_instance: { course_id: @course_package_instance.course_id, course_package_id: @course_package_instance.course_package_id, user_id: @course_package_instance.user_id }
    assert_redirected_to course_package_instance_path(assigns(:course_package_instance))
  end

  test "should destroy course_package_instance" do
    assert_difference('CoursePackageInstance.count', -1) do
      delete :destroy, id: @course_package_instance
    end

    assert_redirected_to course_package_instances_path
  end
end
