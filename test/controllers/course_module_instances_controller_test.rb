require 'test_helper'

class CourseModuleInstancesControllerTest < ActionController::TestCase
  setup do
    @course_module_instance = course_module_instances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:course_module_instances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create course_module_instance" do
    assert_difference('CourseModuleInstance.count') do
      post :create, course_module_instance: { course_id: @course_module_instance.course_id, course_module_id: @course_module_instance.course_module_id, user_id: @course_module_instance.user_id }
    end

    assert_redirected_to course_module_instance_path(assigns(:course_module_instance))
  end

  test "should show course_module_instance" do
    get :show, id: @course_module_instance
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @course_module_instance
    assert_response :success
  end

  test "should update course_module_instance" do
    patch :update, id: @course_module_instance, course_module_instance: { course_id: @course_module_instance.course_id, course_module_id: @course_module_instance.course_module_id, user_id: @course_module_instance.user_id }
    assert_redirected_to course_module_instance_path(assigns(:course_module_instance))
  end

  test "should destroy course_module_instance" do
    assert_difference('CourseModuleInstance.count', -1) do
      delete :destroy, id: @course_module_instance
    end

    assert_redirected_to course_module_instances_path
  end
end
