class Api::V1::CompaniesController < ApplicationController

  def index
    @companies = Company.order(created_at: :desc)
  end

  def show
    company = Company.find params[:id]
    company_json = ActiveModelSerializers::SerializableResource.new(company)
    render json: {company: company_json}
  end

end
