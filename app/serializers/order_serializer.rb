class OrderSerializer < ActiveModel::Serializer
  attributes :user_id, :subtotal, :tax, :total
end
