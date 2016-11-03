class AbilitySerializer < ActiveModel::Serializer
  attributes :id, :identifier, :generation_id, :is_main_series
end
