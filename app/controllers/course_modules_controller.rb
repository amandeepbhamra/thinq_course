class CourseModulesController < ApplicationController
	before_action :set_course_module, only: [:show, :edit, :update, :destroy]

	# GET /course_modules
	# GET /course_modules.json
	def index
		@course_modules = CourseModule.all
	end

	# GET /course_modules/1
	# GET /course_modules/1.json
	def show
		if current_user.role == 1
			@course 		= Course.find_by_id(params[:course_id])
			@course_package = CoursePackage.find_by_id(params[:course_package_id])
			unless @course.blank? and @course_package.blank?
				@course_module_instance = @course_module.course_module_instances.create(user_id: current_user.id, course_id: @course.id, course_package_id: @course_package.id)
			else 
				redirect_to current_user, notice: "Not authorized to this action !"
			end
		end
	end

	# GET /course_modules/new
	def new
		@course_module = CourseModule.new
	end

	# GET /course_modules/1/edit
	def edit
	end

	# POST /course_modules
	# POST /course_modules.json
	def create
		@course_module = CourseModule.new(course_module_params)

		respond_to do |format|
			if @course_module.save
				format.html { redirect_to @course_module, notice: 'Course module was successfully created.' }
				format.json { render :show, status: :created, location: @course_module }
			else
				format.html { render :new }
				format.json { render json: @course_module.errors, status: :unprocessable_entity }
			end
		end
	end

	# PATCH/PUT /course_modules/1
	# PATCH/PUT /course_modules/1.json
	def update
		respond_to do |format|
			if @course_module.update(course_module_params)
				format.html { redirect_to @course_module, notice: 'Course module was successfully updated.' }
				format.json { render :show, status: :ok, location: @course_module }
			else
				format.html { render :edit }
				format.json { render json: @course_module.errors, status: :unprocessable_entity }
			end
		end
	end

	# DELETE /course_modules/1
	# DELETE /course_modules/1.json
	def destroy
		@course_module.destroy
		respond_to do |format|
			format.html { redirect_to course_modules_url, notice: 'Course module was successfully destroyed.' }
			format.json { head :no_content }
		end
	end

	private
		# Use callbacks to share common setup or constraints between actions.
		def set_course_module
			@course_module = CourseModule.find(params[:id])
		end

		# Never trust parameters from the scary internet, only allow the white list through.
		def course_module_params
			params.require(:course_module).permit(:title, :description, :type, :audio, :video, :slideshow, :slideshow)
		end
end
