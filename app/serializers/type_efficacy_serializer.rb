class TypeEfficacySerializer < ActiveModel::Serializer
  attributes :id, :damage_factor, :damage_type_id, :target_type_id
  # has_one :damage_type_id, class_name: :Type
  # has_one :target_type_id, class_name: :Type
end
