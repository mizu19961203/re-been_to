class Admin::VaccineController < ApplicationController
layout 'admin'

  def new
    @vaccine = Country.new
  end

  def edit
    @vaccine = Vaccine.find(params[:id])
  end

  def create
  	vaccine = Vaccine.new(vaccine_params)
  	vaccine.save
  	redirect_to admin_info_index_path
  end

  def update
    vaccine = Vaccine.find(params[:id])
    vaccine.update(vaccine_params)
    redirect_to admin_info_index_path
  end

  def destroy
  	vaccine = Vaccine.find(params[:id])
    vaccine.destroy
    redirect_to admin_info_index_path
  end

  private

  def vaccine_params
  	params.require(:vaccine).permit(:name)
  end
end
