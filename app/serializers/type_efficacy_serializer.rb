class TypeEfficacySerializer < ActiveModel::Serializer
  attributes :id, :damage_factor, :damage_type, :target_type
  # has_one :damage_type_id, class_name: :Type
  # has_one :target_type_id, class_name: :Type
end
