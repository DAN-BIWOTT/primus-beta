class TeachersController < ApplicationController
  before_action :authenticate_user!
  def index
  		@teacher = Teacher.all();
  end

  def edit
    @teacher = Teacher.find(params[:id]);
  end 

  def show
  	
  end

  def create
       # render plain: params[:teacher].inspect;
      @teacher = current_user.teachers.build(teacher_params);

    respond_to do |format|
      if @teacher.save
        format.html { redirect_to @teacher, notice: 'teacher was successfully created.' }
        format.json { render :show, status: :created, location: @teacher }
      else
        format.html { render :new }
        format.json { render json: @teacher.errors, status: :unprocessable_entity }
      end
    end
  end

  def new
  	@teacher = current_user.teachers.build
  end

  def update
    @teacher = Teacher.find(params[:id]);

    if @teacher.update(teacher_params)
      redirect_to @teacher
     else
      render 'edit'
    end
  end

  def destroy
    @teacher = Teacher.find(params[:id]);
    @teacher.destroy;
    redirect_to teachers_path,notice: 'Success!'
  end

  ########################## PRIVATE #########################
  private

  def teacher_params
  	params.require(:teacher).permit(:firstName,:lastName,:email,:joinDate,:designation,:department,:gender,:phoneNumber,:birthDate,:address,:image,:education)
  end

end
