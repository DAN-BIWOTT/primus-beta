class StudentsController < ApplicationController
  before_action :authenticate_user!
  def index
  	@student = Student.all();
  end 

  def new
  	@student = current_user.students.build
    
  end

  def edit
    @student = Student.find(params[:id]);
  end

  def create
   # render plain: params[:student].inspect
  	 @student = current_user.students.build(student_params)

  	 if @student.save
  	 redirect_to @student, notice: 'The student has been added successfully!'
    else 
      render 'new'
    end
  end

  def show
  	
  end

  def destroy
    # render plain: params[:id]
     @student = Student.find(params[:id]);
     @student.destroy;
     redirect_to students_path
  end

  def update
    @student = Student.find(params[:id]);

    if @student.update(student_params)
      redirect_to @student
     else
      render 'edit'
    end
  end

 ################################  PRIVATE ################################
 private 

  def student_params
  	params.require(:student).permit(:firstName,:lastName,:email,:regDate,:sClass,:gender,:mobileNumber,:parentName,:parentNumber,:birth,:address,:image );
  end

end

