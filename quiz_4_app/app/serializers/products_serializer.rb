class ProductsSerializer < ActiveModel::Serializer
  attributes :id, :body
  belongs_to :company
end
