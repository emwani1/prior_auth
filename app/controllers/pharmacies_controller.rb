class PharmaciesController < ApplicationController
  before_action :find_pharmacy , only: [:edit,:update,:destroy]
def new
  @pharmacy = Pharmacy.new
end

def create
  @pharmacy = Pharmacy.new(pharmacy_params)
  if @pharmacy.save
    flash[:sucess] = "Your account is successfully created #{@user.username}"
    redirect_to root_path
  else
    render 'new'
  end


  def edit
  end

  def update
    if @pharmacy.update(pharmacy_params)
      flash[:sucess] = "Your account is successfully update #{@user.username}"
      redirect_to root_path
    else
      render 'edit'
    end
  end

  def destroy
    @pharmacy.destroy
    redirect_to root_path
  end

end

private

def pharmacy_params
  params.require(@pharmacy).permit(:npi,:name,:address,:phonenumber,:zipcode,:state,:password)
end

def find_pharmacy
  @pharmacy = Pharmacy.find(params[:id])
end
end
