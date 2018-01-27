class InsurancesController < ApplicationController
  before_action :find_insurance, only:[:edit,:update,:destroy]

  def new
    @insurance = Insurance.new
  end


  def create
    @insurance = Insurance.new(insurance_params)
    if @insurance.save
      flash[:sucess] = "Your account is successfully created #{@user.username}"
      redirect_to root_path
    else
      render 'new'
    end
  end



  def edit
  end

  def update
    if @insurance.update(insurance_params)
      redirect_to root_path
    else
      render 'new'
    end
  end

  def destroy
    @insurance.destroy
    redirect_to root_path
  end




  private

  def insurance_params
    params.require(:insurance).permit(:username,:password)
  end

  def find_insurance
    @insurance = Insurance.find(params[:id])
  end

end