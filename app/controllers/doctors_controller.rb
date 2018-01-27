class DoctorsController< ApplicationController
  before_action :find_doc ,only:
  def new
    @doctor = Doctor.new
  end

  def create
    @doctor = Doctor.new(doc_params)
    if @doctor.save
      flash[:success] = "Your account was successully created"
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @doctor.update(doc_params)
      flash[:success]= "Your account successfully updated"
    else
      render 'edit'
    end
  end

  def destroy
    @doctor.destroy
    flash[:success] = "Your account was deleted"
  end

  private
  def doc_params
    params.require(:doctor).permit(:firstname,:lastname,:npi,:address,:state,:dea,:zipcode)
  end
  def find_doc
    @doctor = Doctor.find(params[:id])
  end
end