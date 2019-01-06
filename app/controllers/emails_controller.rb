class EmailsController < ApplicationController
	before_action :authenticate_user!
end
