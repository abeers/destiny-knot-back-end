class StatSerializer < ActiveModel::Serializer
  attributes :id, :damage_class_id, :identifier, :is_battle_only, :game_index
end
