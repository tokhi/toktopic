class CoursesController < ApplicationController
  # GET /courses
  # GET /courses.json
  def index
    @semester = Semester.find(params[:semester_id])
    @courses =  @semester.courses#Course.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @courses }
    end
  end

  # GET /courses/1
  # GET /courses/1.json
  def show
    @course = Course.find(params[:id])
     #@course = Course.find_by_semester_id(:semester_id)

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @course }
    end
  end

  # GET /courses/new
  # GET /courses/new.json
  def new
   
    @semester = Semester.find(params[:semester_id])
    @course = Course.new
  #  @course = @semester.courses.build


  end

  # GET /courses/1/edit
  def edit
    @semester = Semester.find(params[:semester_id])
    #@course = Course.find_by_semester_id(:semester_id)
    @course = Course.find(params[:id])
  end

  # POST /courses
  # POST /courses.json
  def create
    @semester = Semester.find(params[:semester_id])
    @course = @semester.courses.new(params[:course])
    respond_to do |format|
      if @course.save
        format.html { redirect_to semester_courses_path }
        format.json { render json: @course, status: :created, location:  semester_courses_path }
      else
        format.html { render action: "new" }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /courses/1
  # PUT /courses/1.json
  def update
    @course = Course.find(params[:id])

    respond_to do |format|
      if @course.update_attributes(params[:course])
        format.html { redirect_to semester_courses_path }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /courses/1
  # DELETE /courses/1.json
  def destroy
    @semester = Semester.find(params[:semester_id])
    @course = @semester.courses.find(params[:id])
    #@course = Course.find(params[:id])
    @course.destroy

    respond_to do |format|
      format.html { redirect_to semester_courses_path }
      format.json { head :no_content }
    end
  end
end
