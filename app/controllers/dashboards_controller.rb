class DashboardsController < ApplicationController
	before_action :authenticate_user!
  def index
  	@student = Student.all()
  	@absent = 0
  	@present = 0
  	@color
  	current_user.students.each do |s|
  		if s.attendance == 0
  			@absent = (1+@absent)
  		else
  			@present =(1+@present)
  		end
  	@percentPresent = ((@present/(@present+@absent)) * 100)
  	if @percentPresent < 50
  		@color = 'danger'
  	else
  		@color = 'primary'
      
  	end

  	end
  end

  def about
  	@user = current_user;
  end
end