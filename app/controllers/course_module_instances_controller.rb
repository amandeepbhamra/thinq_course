class CourseModuleInstancesController < ApplicationController
  before_action :set_course_module_instance, only: [:show, :edit, :update, :destroy]

  # GET /course_module_instances
  # GET /course_module_instances.json
  def index
    @course_module_instances = CourseModuleInstance.all
  end

  # GET /course_module_instances/1
  # GET /course_module_instances/1.json
  def show
  end

  # GET /course_module_instances/new
  def new
    @course_module_instance = CourseModuleInstance.new
  end

  # GET /course_module_instances/1/edit
  def edit
  end

  # POST /course_module_instances
  # POST /course_module_instances.json
  def create
    @course_module_instance = CourseModuleInstance.new(course_module_instance_params)

    respond_to do |format|
      if @course_module_instance.save
        format.html { redirect_to @course_module_instance, notice: 'Course module instance was successfully created.' }
        format.json { render :show, status: :created, location: @course_module_instance }
      else
        format.html { render :new }
        format.json { render json: @course_module_instance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /course_module_instances/1
  # PATCH/PUT /course_module_instances/1.json
  def update
    respond_to do |format|
      if @course_module_instance.update(course_module_instance_params)
        format.html { redirect_to @course_module_instance, notice: 'Course module instance was successfully updated.' }
        format.json { render :show, status: :ok, location: @course_module_instance }
      else
        format.html { render :edit }
        format.json { render json: @course_module_instance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /course_module_instances/1
  # DELETE /course_module_instances/1.json
  def destroy
    @course_module_instance.destroy
    respond_to do |format|
      format.html { redirect_to course_module_instances_url, notice: 'Course module instance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course_module_instance
      @course_module_instance = CourseModuleInstance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_module_instance_params
      params.require(:course_module_instance).permit(:course_id, :course_module_id, :user_id)
    end
end
