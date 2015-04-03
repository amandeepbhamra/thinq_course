class CoursePackageInstancesController < ApplicationController
  before_action :set_course_package_instance, only: [:show, :edit, :update, :destroy]

  # GET /course_package_instances
  # GET /course_package_instances.json
  def index
    @course_package_instances = CoursePackageInstance.all
  end

  # GET /course_package_instances/1
  # GET /course_package_instances/1.json
  def show
  end

  # GET /course_package_instances/new
  def new
    @course_package_instance = CoursePackageInstance.new
  end

  # GET /course_package_instances/1/edit
  def edit
  end

  # POST /course_package_instances
  # POST /course_package_instances.json
  def create
    @course_package_instance = CoursePackageInstance.new(course_package_instance_params)

    respond_to do |format|
      if @course_package_instance.save
        format.html { redirect_to @course_package_instance, notice: 'Course package instance was successfully created.' }
        format.json { render :show, status: :created, location: @course_package_instance }
      else
        format.html { render :new }
        format.json { render json: @course_package_instance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /course_package_instances/1
  # PATCH/PUT /course_package_instances/1.json
  def update
    respond_to do |format|
      if @course_package_instance.update(course_package_instance_params)
        format.html { redirect_to @course_package_instance, notice: 'Course package instance was successfully updated.' }
        format.json { render :show, status: :ok, location: @course_package_instance }
      else
        format.html { render :edit }
        format.json { render json: @course_package_instance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /course_package_instances/1
  # DELETE /course_package_instances/1.json
  def destroy
    @course_package_instance.destroy
    respond_to do |format|
      format.html { redirect_to course_package_instances_url, notice: 'Course package instance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course_package_instance
      @course_package_instance = CoursePackageInstance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_package_instance_params
      params.require(:course_package_instance).permit(:course_id, :course_package_id, :user_id)
    end
end
