class TypeSerializer < ActiveModel::Serializer
  attributes :id, :identifier, :generation_id, :damage_class_id
end
