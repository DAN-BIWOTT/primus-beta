class SubjectsController < ApplicationController
  before_action :authenticate_user!
  def index
    @subject = Subject.all()
  end

  def new
    @subject = current_user.subjects.build
  end

  def edit
  	@subject = current_user.subjects.build(params[:id])
  end

  def show
  
  end

  def create
  	#render plain: params[:subject].inspect;
  	@subject = current_user.subjects.build(subject_params);

      if	@subject.save
      	redirect_to @subject
      else
        render :new
        @subject.errors
     end
  end

  def destroy
    @subject = Subject.find(params[:id])
    @subject.destroy
    redirect_to subject_path
  end

  #######PRIVATE########
  private
  def subject_params
  	params.require(:subject).permit(:subjectName,:subjectCode,:subjectDetail,:startDate,:subjectTeacher,:subjectCapacity,:subjectNumber,:image);
  end
end
