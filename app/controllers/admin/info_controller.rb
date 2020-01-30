class Admin::InfoController < ApplicationController
layout 'admin'
	def index
		@vaccine = Vaccine.new
	    @vaccines = Vaccine.all
	    @country = Country.new
	    @countries = Country.all
	end

	def update
		if params[:format] == "vaccine"
	      vaccine = Vaccine.find(params[:id])
	      vaccine.save
	      redirect_to admin_info_index_path
	    elsif params[:format] == "country"
	      country = Country.find(params[:id])
	      country.save
	      redirect_to admin_info_index_path
        end
	end

	def destroy
		if params[:format] == "vaccine"
	      vaccine = Vaccine.find(params[:id])
	      vaccine.destroy
	      redirect_to admin_info_index_path
	    elsif params[:format] == "country"
	      country = Country.find(params[:id])
	      country.destroy
	      redirect_to admin_info_index_path
	    end
	end
end
