class CompaniesController < ApplicationController

  # def show
  #   @company = Company.find params[:id]
  # end

  def index
    @companies = Company.all
    @array = []
    @companies.each do |something|
      @array << {name: something.name, products: something.products}
    end
    @final = {"companies": @array}
    respond_to do |format|
      format.html { render }
      format.json { render json: @final }
    end
  end

end
