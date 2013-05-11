class ThesesController < ApplicationController
  # GET /theses
  # GET /theses.json
  def index
    #@theses = Thesis.all
    @semester = Semester.find(params[:semester_id])
    @theses =  @semester.theses#Course.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @theses }
    end
  end

  # GET /theses/1
  # GET /theses/1.json
  def show
    #@thesis = Thesis.find(params[:id])
     @thesis = Thesis.find(params[:id])
     #@course = Course.find_by_semester_id(:semester_id)

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @thesis }
    end
  end

  # GET /theses/new
  # GET /theses/new.json
  def new
    #
    @semester = Semester.find(params[:semester_id])
    @thesis = Thesis.new
  end

  # GET /theses/1/edit
  def edit
    @semester = Semester.find(params[:semester_id])
    @thesis = Thesis.find(params[:id])
  end

  # POST /theses
  # POST /theses.json
  def create
    #@thesis = Thesis.new(params[:thesis])
    @semester = Semester.find(params[:semester_id])
    @thesis = @semester.theses.new(params[:course])
    respond_to do |format|
      if @course.save
        format.html { redirect_to semester_theses_path }
        format.json { render json: @course, status: :created, location:  semester_theses_path }
      else
        format.html { render action: "new" }
        format.json { render json: @thesis.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /theses/1
  # PUT /theses/1.json
  def update
    @thesis = Thesis.find(params[:id])
    
    respond_to do |format|
      if @course.update_attributes(params[:thesis])
        format.html { redirect_to semester_theses_path }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @thesis.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /theses/1
  # DELETE /theses/1.json
  def destroy
    #@thesis = Thesis.find(params[:id])
    @semester = Semester.find(params[:semester_id])
    @thesis = @semester.theses.find(params[:id])
    #@course = Course.find(params[:id])
    @thesis.destroy

    respond_to do |format|
      format.html { redirect_to semester_theses_path }
      format.json { head :no_content }
    end
  end
end
