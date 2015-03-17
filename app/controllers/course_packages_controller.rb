class CoursePackagesController < ApplicationController
  before_action :set_course_package, only: [:show, :edit, :update, :destroy]

  # GET /course_packages
  # GET /course_packages.json
  def index
    @course_packages = CoursePackage.all
  end

  # GET /course_packages/1
  # GET /course_packages/1.json
  def show
  end

  # GET /course_packages/new
  def new
    @course_package = CoursePackage.new
  end

  # GET /course_packages/1/edit
  def edit
  end

  # POST /course_packages
  # POST /course_packages.json
  def create
    @course_package = CoursePackage.new(course_package_params)

    respond_to do |format|
      if @course_package.save
        format.html { redirect_to @course_package, notice: 'Course package was successfully created.' }
        format.json { render :show, status: :created, location: @course_package }
      else
        format.html { render :new }
        format.json { render json: @course_package.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /course_packages/1
  # PATCH/PUT /course_packages/1.json
  def update
    respond_to do |format|
      if @course_package.update(course_package_params)
        format.html { redirect_to @course_package, notice: 'Course package was successfully updated.' }
        format.json { render :show, status: :ok, location: @course_package }
      else
        format.html { render :edit }
        format.json { render json: @course_package.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /course_packages/1
  # DELETE /course_packages/1.json
  def destroy
    @course_package.destroy
    respond_to do |format|
      format.html { redirect_to course_packages_url, notice: 'Course package was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course_package
      @course_package = CoursePackage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_package_params
      params.require(:course_package).permit(:title, :description, :video, :slideshow)
    end
end
