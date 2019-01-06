class LibrarysController < ApplicationController
  before_action :authenticate_user!
  def index
    @library = Library.all();
  end

  def library
  	
  end

  def new
    @library = current_user.libraries.build
  end

  def edit
    @library = Library.find(params[:id]);
  end

  def update
    @library = Library.find(params[:id]);

    @library.update(library_params)
    redirect_to @library,notice: 'Edit successfull'
  end

  def show
  	
  end

  def create
  	#render plain: params[:library].inspect
  	@library = current_user.libraries.build(library_params)

  	if @library.save
  	 redirect_to @library;
    else
      render 'new'
    end
  end

  def destroy
    @library = Library.find(params[:id])
    @library.destroy
    redirect_to librarys_path,notice: 'delete successfull'
  end
###############PRIVATE###############
private 
	def library_params
		params.require(:library).permit(:bookTitle,:Subject,:Author,:Publisher,:Department,:AssetType,:purchaseDate,:Price,:Status,:assetDetails)
	end
end
