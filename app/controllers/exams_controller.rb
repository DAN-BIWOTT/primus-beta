class ExamsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_exam, only: [:show, :edit, :update, :destroy]

  # GET /exams
  # GET /exams.json
  def index
    @exams = Exam.all
    @class = 1
  end

  # GET /exams/1
  # GET /exams/1.json
  def show
  end 


  # GET /exams/new
  def new
    @exam = current_user.exams.build
    @student = current_user.students
  end

  # GET /exams/1/edit
  def edit
     @subject = current_user.subjects
     @student = current_user.students
  end

  # POST /exams
  # POST /exams.json
  def create
   # render plain: params[:exam].inspect;
    @exam = current_user.exams.build(exam_params)
    @subject = current_user.subjects
    @student = current_user.students

    respond_to do |format|
      if @exam.save
        format.html { redirect_to @exam, notice: 'Exam results were successfully submited.' }
        format.json { render :show, status: :created, location: @exam }
      else
        format.html { render :new }
        format.json { render json: @exam.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /exams/1
  # PATCH/PUT /exams/1.json
  def update
    respond_to do |format|
      if @exam.update(exam_params)
        format.html { redirect_to @exam, notice: 'Exam was successfully updated.' }
        format.json { render :show, status: :ok, location: @exam }
      else
        format.html { render :edit }
        format.json { render json: @exam.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exams/1
  # DELETE /exams/1.json
  def destroy
    @exam.destroy
    respond_to do |format|
      format.html { redirect_to exams_url, notice: 'Exam was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

    def class_1
       @class_1 = current_user.students.find_by_sql("SELECT * FROM students WHERE sclass = 1")
       render plain:@class_1
    end

    def class_2
     @class_2 = current_user.students.find_by_sql("SELECT * FROM students WHERE sclass = 2")
    end
    def class_3
      @class_3 = current_user.students.find_by_sql("SELECT * FROM students WHERE sclass = 3")
    end
    def class_4
      @class_4 = current_user.students.find_by_sql("SELECT * FROM students WHERE sclass = 4")
    end
    def class_5
      @class_5 = current_user.students.find_by_sql("SELECT * FROM students WHERE sclass = 5")
    end
    def class_6
      @class_6 = current_user.students.find_by_sql("SELECT * FROM students WHERE sclass = 6")
    end
    def class_7
      @class_7 = current_user.students.find_by_sql("SELECT * FROM students WHERE sclass = 7")
    end
    def class_8
      @class_8 = current_user.students.find_by_sql("SELECT * FROM students WHERE sclass = 8")
    end
    def nus1
      @nus1 = current_user.students.find_by_sql("SELECT * FROM students WHERE sclass = 9")
    end
    def nus2
      @nus2 = current_user.students.find_by_sql("SELECT * FROM students WHERE sclass = 10")
    end
    def nus3
      @nus3 = current_user.students.find_by_sql("SELECT * FROM students WHERE sclass = 11")
    end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exam
      @exam = Exam.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def exam_params
      params.require(:exam).permit(:date,:student_id, :examName, :results, :english, :kiswahili, :math, :science, :social_studies, :CRE)
    end

end