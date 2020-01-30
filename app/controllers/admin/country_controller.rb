class Admin::CountryController < ApplicationController
layout 'admin'

  def new
    @country = Country.new
  end

  def edit
    @country = Country.find(params[:id])
  end

  def create
  	country = Country.new(country_params)
  	country.save
  	redirect_to admin_info_index_path
  end

  def update
    country = Country.find(params[:id])
    country.update(country_params)
    redirect_to admin_info_index_path
  end

  def destroy
  	country = Country.find(params[:id])
    country.destroy
    redirect_to admin_info_index_path
  end

  private

  def country_params
  	params.require(:country).permit(:country)
  end

end
