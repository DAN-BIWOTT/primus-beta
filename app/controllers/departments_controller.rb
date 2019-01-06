class DepartmentsController < ApplicationController
  before_action :authenticate_user!
  def index
  	@department = Department.all();
  end

  def new
    @department = current_user.departments.build
  end

  def create
  	#render plain: params[:departments].inspect;
  	@department = current_user.departments.build(department_params);

  	if @department.save
  	   redirect_to @department;
     else
      render 'new'
    end
  end

  def edit
    @department = Department.find(params[:id]);
  end

  def update
    @department = Department.find(params[:id])

    @department.update(department_params)
    redirect_to @department
  end

  def destroy
    @department = Department.find(params[:id])
    @department.destroy
    redirect_to departments_path
  end

  def show
  	
  end

  ############PRIVATE FIELDS################
  private
  def department_params
   		params.require(:department).permit(:depName,:depHead,:depStartDate,:depStdCapacity,:depDescription);
   end 

end
