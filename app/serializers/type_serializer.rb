class TypeSerializer < ActiveModel::Serializer
  attributes :id, :identifier, :generation_id, :damage_class_id, :type_efficacies
end
