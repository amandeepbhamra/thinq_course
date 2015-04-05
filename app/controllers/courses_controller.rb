class CoursesController < ApplicationController

	before_action :set_course, only: [:show, :edit, :update, :destroy, :initialize]

	# GET /courses
	# GET /courses.json
	def index
		@courses 		= Course.all
		@courses 		= Course.where("title LIKE ?", "%#{params[:q]}%") if defined? params[:q] and !params[:q].blank?
		@courses_json 	= @courses.map{ |v| {id: v[:id], title: v[:title]}}.to_json
		respond_to do |format|
			format.html
			format.json { render json: @courses_json }
		end
	end

	# GET /courses/1
	# GET /courses/1.json
	def show
		@course_packages = @course.course_packages
		@course_modules  = @course.course_modules.group_by{ |v| v.course_package_id }
	end

	# GET /courses/new
	def new
		@course = Course.new
	end

	# GET /courses/1/edit
	def edit
	end

	# POST /courses
	# POST /courses.json
	def create
		@course = Course.new(course_params)

		respond_to do |format|
			if @course.save
				format.html { redirect_to @course, notice: 'Course was successfully created.' }
				format.json { render :show, status: :created, location: @course }
			else
				format.html { render :new }
				format.json { render json: @course.errors, status: :unprocessable_entity }
			end
		end
	end

	# PATCH/PUT /courses/1
	# PATCH/PUT /courses/1.json
	def update
		respond_to do |format|
			if @course.update(course_params)
				format.html { redirect_to @course, notice: 'Course was successfully updated.' }
				format.json { render :show, status: :ok, location: @course }
			else
				format.html { render :edit }
				format.json { render json: @course.errors, status: :unprocessable_entity }
			end
		end
	end

	# DELETE /courses/1
	# DELETE /courses/1.json
	def destroy
		@course.destroy
		respond_to do |format|
			format.html { redirect_to courses_url, notice: 'Course was successfully destroyed.' }
			format.json { head :no_content }
		end
	end

	def binded
    	if defined? params['courses'] and !params['courses'].blank?
      		@course = Course.find_by_title(params['courses'].map{|k, v| v[:title]})
		else
      		@course = Course.all
    	end
    	respond_to do |format|
      		format.js { render 'course/get_tags'}
    	end
  	end
  	
	private
	
	# Use callbacks to share common setup or constraints between actions.
	def set_course
		@course = Course.find(params[:id])
	end

	# Never trust parameters from the scary internet, only allow the white list through.
	def course_params
		params.require(:course).permit(:title, :description, :video, :slideshow, :logistics)
	end
end
