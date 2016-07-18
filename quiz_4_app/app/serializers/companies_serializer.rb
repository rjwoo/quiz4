class CompaniesSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :products

  # include Rails.application.routes.url_helpers

end
